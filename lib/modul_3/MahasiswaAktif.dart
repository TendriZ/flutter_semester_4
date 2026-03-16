import 'dart:io';
import 'class_objek.dart';

class MahasiswaAktif extends Mahasiswa {
  int? semester;
  double? ipk;
  String? status; // aktif, cuti, skorsing

  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Semester : ${semester ?? 'Belum diisi'}");
    print("IPK      : ${ipk ?? 'Belum diisi'}");
    print("Status   : ${status ?? 'Belum diisi'}");
  }
}

void main() {
  MahasiswaAktif mhsAktif = MahasiswaAktif();

  print("=== Input Data Mahasiswa Aktif ===");

  print("Masukkan Nama:");
  mhsAktif.nama = stdin.readLineSync();

  print("Masukkan NIM:");
  mhsAktif.nim = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Jurusan:");
  mhsAktif.jurusan = stdin.readLineSync();

  print("Masukkan Semester:");
  mhsAktif.semester = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan IPK:");
  mhsAktif.ipk = double.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Status (Aktif/Cuti/Skorsing):");
  mhsAktif.status = stdin.readLineSync();

  print("\n=== Data Mahasiswa Aktif ===");
  mhsAktif.tampilkanData();
}
