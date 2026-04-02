import 'package:dio/dio.dart';
import 'package:flutter_semester_4/core/network/dio_client.dart';
import 'package:flutter_semester_4/features/dosen/data/models/dosen_model.dart';


class DosenRepository {
  final DioClient _dioClient;

  DosenRepository({DioClient? dioClient}) : _dioClient = dioClient ?? DioClient();

  /// Mendapatkan daftar dosen
  Future<List<DosenModel>> getDosenList() async {
    try {
      final response = await _dioClient.dio.get<List<dynamic>>('/users');
      final List<dynamic> data = response.data as List<dynamic>;
      return data.map((json) {
          return DosenModel.fromJson(Map<String, dynamic>.from(json as Map));
      }).toList();
    } on DioException catch (e) {
      throw Exception(
        'Gagal memuat data dosen: ${e.response?.statusCode} - ${e.message}',
      );
    }
  }
}
