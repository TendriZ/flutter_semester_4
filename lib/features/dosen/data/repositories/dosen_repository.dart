import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/dosen_model.dart';

class DosenRepository {
  final Dio _dio = Dio();

  /// Mendapatkan daftar dosen
  Future<List<DosenModel>> getDosenList() async {
    const url = 'https://jsonplaceholder.typicode.com/users';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        print(data); // Debug: Tampilkan data yang sudah di-decode
        return data.map((json) {
          return DosenModel.fromJson(Map<String, dynamic>.from(json as Map));
        }).toList();
      }
    } catch (_) {
      // Fallback ke dio jika http gagal.
    }

    final response = await _dio.get<List<dynamic>>(url);
    if (response.statusCode == 200 && response.data != null) {
      return response.data!.map((json) {
        return DosenModel.fromJson(Map<String, dynamic>.from(json as Map));
      }).toList();
    }

    throw Exception('Gagal memuat data dosen dari API');
  }
}
