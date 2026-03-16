import '../models/profile_model.dart';

class ProfileRepository {
  /// Mendapatkan data profile
  Future<ProfileModel> getProfile() async {
    // Simulasi network delay
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy profile
    return ProfileModel(
      nama: 'Admin D4TI',
      nim: '2341760001',
      email: 'admin.d4ti@student.ac.id',
      jurusan: 'Teknik Informatika',
      noTelp: '081234567890',
      alamat: 'Jl. Soekarno Hatta No. 9, Malang',
    );
  }
}
