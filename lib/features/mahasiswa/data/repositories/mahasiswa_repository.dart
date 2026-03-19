import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  final Dio _dio = Dio();

  /// Mendapatkan daftar mahasiswa
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    const url = 'https://jsonplaceholder.typicode.com/comments';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((json) {
          return MahasiswaModel.fromJson(Map<String, dynamic>.from(json as Map));
        }).toList();
      }
    } catch (_) {
      // Fallback ke dio jika http gagal.
    }

    final response = await _dio.get<List<dynamic>>(url);
    if (response.statusCode == 200 && response.data != null) {
      return response.data!.map((json) {
        return MahasiswaModel.fromJson(Map<String, dynamic>.from(json as Map));
      }).toList();
    }

    throw Exception('Gagal memuat data mahasiswa dari API');
  }
}
