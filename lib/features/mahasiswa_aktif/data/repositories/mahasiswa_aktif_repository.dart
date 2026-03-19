import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  final Dio _dio = Dio();

  /// Mendapatkan daftar mahasiswa aktif
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    const url = 'https://jsonplaceholder.typicode.com/posts';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((json) {
          return MahasiswaAktifModel.fromJson(
            Map<String, dynamic>.from(json as Map),
          );
        }).toList();
      }
    } catch (_) {
      // Fallback ke dio jika http gagal.
    }

    final response = await _dio.get<List<dynamic>>(url);
    if (response.statusCode == 200 && response.data != null) {
      return response.data!.map((json) {
        return MahasiswaAktifModel.fromJson(
          Map<String, dynamic>.from(json as Map),
        );
      }).toList();
    }

    throw Exception('Gagal memuat data mahasiswa aktif dari API');
  }
}
