import 'dart:io';
import 'class_objek.dart';

class MahasiswaAlumni extends Mahasiswa {
  int? tahunLulus;
  String? pekerjaan;
  String? perusahaan;

  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Tahun Lulus : ${tahunLulus ?? 'Belum diisi'}");
    print("Pekerjaan   : ${pekerjaan ?? 'Belum diisi'}");
    print("Perusahaan  : ${perusahaan ?? 'Belum diisi'}");
  }
}

void main() {
  MahasiswaAlumni mhsAlumni = MahasiswaAlumni();

  print("=== Input Data Mahasiswa Alumni ===");

  print("Masukkan Nama:");
  mhsAlumni.nama = stdin.readLineSync();

  print("Masukkan NIM:");
  mhsAlumni.nim = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Jurusan:");
  mhsAlumni.jurusan = stdin.readLineSync();

  print("Masukkan Tahun Lulus:");
  mhsAlumni.tahunLulus = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Pekerjaan:");
  mhsAlumni.pekerjaan = stdin.readLineSync();

  print("Masukkan Perusahaan:");
  mhsAlumni.perusahaan = stdin.readLineSync();

  print("\n=== Data Mahasiswa Alumni ===");
  mhsAlumni.tampilkanData();
}
