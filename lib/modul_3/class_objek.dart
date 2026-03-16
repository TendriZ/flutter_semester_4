import 'dart:io';

class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
  print("Nama : ${nama ?? 'Belum diisi'}");
  print("NIM : ${nim?? 'Belum diisi'}");
  print("Jurusan : ${jurusan ?? 'Belum diisi'}");
  }
}

void main() {
  Mahasiswa mahasiswa1 = Mahasiswa();
  print("Masukkan Nama Mahasiswa:");
  mahasiswa1.nama = stdin.readLineSync();

  print("Masukkan NIM Mahasiswa:");
  mahasiswa1.nim = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Jurusan Mahasiswa:");
  mahasiswa1.jurusan = stdin.readLineSync();
  mahasiswa1.tampilkanData();
}
