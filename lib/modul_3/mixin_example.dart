import 'dart:io';

// ==================== BASE CLASS ====================
class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama    : ${nama ?? 'Belum diisi'}");
    print("NIM     : ${nim ?? 'Belum diisi'}");
    print("Jurusan : ${jurusan ?? 'Belum diisi'}");
  }
}

// ==================== 3 MIXIN ====================

/// Mixin 1: Kemampuan mengajar
mixin Pengajar {
  String? mataKuliah;
  int? tahunMengajar;

  void mengajar() {
    print(">> Mengajar mata kuliah: ${mataKuliah ?? '-'}");
  }

  void tampilkanPengajar() {
    print("Mata Kuliah    : ${mataKuliah ?? 'Belum diisi'}");
    print("Tahun Mengajar : ${tahunMengajar ?? 'Belum diisi'}");
  }
}

/// Mixin 2: Kemampuan meneliti
mixin Peneliti {
  String? bidangPenelitian;
  int? jumlahPublikasi;

  void meneliti() {
    print(">> Melakukan penelitian di bidang: ${bidangPenelitian ?? '-'}");
  }

  void tampilkanPeneliti() {
    print("Bidang Penelitian : ${bidangPenelitian ?? 'Belum diisi'}");
    print("Jumlah Publikasi  : ${jumlahPublikasi ?? 'Belum diisi'}");
  }
}

/// Mixin 3: Kemampuan administrasi
mixin Administrasi {
  String? jabatan;
  String? ruangan;

  void kelolaSurat() {
    print(">> Mengelola administrasi surat di ruangan: ${ruangan ?? '-'}");
  }

  void tampilkanAdministrasi() {
    print("Jabatan  : ${jabatan ?? 'Belum diisi'}");
    print("Ruangan  : ${ruangan ?? 'Belum diisi'}");
  }
}

// ==================== EXTENDS + MIXIN ====================

/// Dosen extends Mahasiswa, with mixin Pengajar & Peneliti
class Dosen extends Mahasiswa with Pengajar, Peneliti {
  String? nidn;

  @override
  void tampilkanData() {
    print("----- Data Dosen -----");
    super.tampilkanData();
    print("NIDN             : ${nidn ?? 'Belum diisi'}");
    tampilkanPengajar();
    tampilkanPeneliti();
  }
}

/// Fakultas extends Mahasiswa, with mixin Administrasi & Peneliti
class Fakultas extends Mahasiswa with Administrasi, Peneliti {
  String? namaFakultas;
  String? kodeFakultas;

  @override
  void tampilkanData() {
    print("----- Data Fakultas -----");
    super.tampilkanData();
    print("Nama Fakultas : ${namaFakultas ?? 'Belum diisi'}");
    print("Kode Fakultas : ${kodeFakultas ?? 'Belum diisi'}");
    tampilkanAdministrasi();
    tampilkanPeneliti();
  }
}

// ==================== MAIN ====================
void main() {
  // ---------- Input Dosen ----------
  Dosen dosen = Dosen();

  print("========================================");
  print("   INPUT DATA DOSEN");
  print("========================================");

  print("Masukkan Nama:");
  dosen.nama = stdin.readLineSync();

  print("Masukkan NIM (asal):");
  dosen.nim = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Jurusan:");
  dosen.jurusan = stdin.readLineSync();

  print("Masukkan NIDN:");
  dosen.nidn = stdin.readLineSync();

  print("Masukkan Mata Kuliah:");
  dosen.mataKuliah = stdin.readLineSync();

  print("Masukkan Tahun Mengajar:");
  dosen.tahunMengajar = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Bidang Penelitian:");
  dosen.bidangPenelitian = stdin.readLineSync();

  print("Masukkan Jumlah Publikasi:");
  dosen.jumlahPublikasi = int.tryParse(stdin.readLineSync() ?? '');

  // ---------- Input Fakultas ----------
  Fakultas fakultas = Fakultas();

  print("\n========================================");
  print("   INPUT DATA FAKULTAS");
  print("========================================");

  print("Masukkan Nama (Dekan/Staff):");
  fakultas.nama = stdin.readLineSync();

  print("Masukkan NIM (asal):");
  fakultas.nim = int.tryParse(stdin.readLineSync() ?? '');

  print("Masukkan Jurusan:");
  fakultas.jurusan = stdin.readLineSync();

  print("Masukkan Nama Fakultas:");
  fakultas.namaFakultas = stdin.readLineSync();

  print("Masukkan Kode Fakultas:");
  fakultas.kodeFakultas = stdin.readLineSync();

  print("Masukkan Jabatan:");
  fakultas.jabatan = stdin.readLineSync();

  print("Masukkan Ruangan:");
  fakultas.ruangan = stdin.readLineSync();

  print("Masukkan Bidang Penelitian:");
  fakultas.bidangPenelitian = stdin.readLineSync();

  print("Masukkan Jumlah Publikasi:");
  fakultas.jumlahPublikasi = int.tryParse(stdin.readLineSync() ?? '');

  // ---------- Output ----------
  print("\n========================================");
  print("   OUTPUT DATA");
  print("========================================\n");

  dosen.tampilkanData();
  dosen.mengajar();
  dosen.meneliti();

  print("");

  fakultas.tampilkanData();
  fakultas.kelolaSurat();
  fakultas.meneliti();
}
