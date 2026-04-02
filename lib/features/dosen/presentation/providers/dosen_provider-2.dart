import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_semester_4/core/network/dio_client.dart';
import 'package:flutter_semester_4/core/services/local_storage_service.dart';
import 'package:flutter_semester_4/features/dosen/data/models/dosen_model.dart';
import 'package:flutter_semester_4/features/dosen/data/repositories/dosen_repository.dart';

final dioClientProvider = Provider<DioClient>((ref) {
  final localStorage = ref.watch(localStorageServiceProvider);
  return DioClient(localStorage: localStorage);
});

final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

final savedUsersProvider = FutureProvider<List<Map<String, String>>>(
  (ref) async {
    final storage = ref.watch(localStorageServiceProvider);
    return storage.getSavedUsers();
  },
);

final savedUserProvider = FutureProvider<Map<String, String?>>((ref) async {
  final storage = ref.watch(localStorageServiceProvider);
  final userId = await storage.getUserId();
  final username = await storage.getUsername();
  final token = await storage.getToken();
  return {'userId': userId, 'username': username, 'token': token};
});

// Repository Provider
final dosenRepositoryProvider = Provider<DosenRepository>((ref) {
  return DosenRepository(dioClient: ref.watch(dioClientProvider));
});

// StateNotifier untuk mengelola state dosen
class DosenNotifier extends StateNotifier<AsyncValue<List<DosenModel>>> {
  final DosenRepository _repository;
  final LocalStorageService _storage;
  final Ref ref;

  DosenNotifier(this._repository, this._storage, this.ref)
    : super(const AsyncValue.loading()) {
    loadDosenList();
  }

  /// Load data dosen dalam bentuk list
  Future<void> loadDosenList() async {
    state = const AsyncValue.loading();
    try {
      final data = await _repository.getDosenList();
      state = AsyncValue.data(data);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  /// Refresh data dosen dalam bentuk list
  Future<void> refresh() async {
    await loadDosenList();
  }

  Future<void> saveSelectedDosen(DosenModel dosen) async {
    await _storage.addUserToSavedList(
      userId: dosen.id.toString(),
      username: dosen.username,
    );
  }

  Future<void> removeSavedUser(String userId) async {
    await _storage.removeSavedUser(userId);
  }

  Future<void> clearSavedUsers() async {
    await _storage.clearSavedUsers();
  }
}

// Dosen Notifier Provider
final dosenNotifierProvider =
    StateNotifierProvider.autoDispose<
      DosenNotifier,
      AsyncValue<List<DosenModel>>
    >((ref) {
      final repository = ref.watch(dosenRepositoryProvider);
      final storage = ref.watch(localStorageServiceProvider);
      return DosenNotifier(repository, storage, ref);
    });
