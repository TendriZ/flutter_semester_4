import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifRepository {
  /// Mendapatkan daftar mahasiswa aktif
  Future<List<MahasiswaAktifModel>> getMahasiswaAktifList() async {
    // Simulasi network delay
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy mahasiswa aktif
    return [
      MahasiswaAktifModel(
        nama: 'Raka Pratama',
        nim: '2341760001',
        email: 'raka.pratama@student.ac.id',
        jurusan: 'Teknik Informatika',
        semester: 4,
        ipk: 3.85,
        status: 'Aktif',
      ),
      MahasiswaAktifModel(
        nama: 'Dian Safitri',
        nim: '2341760002',
        email: 'dian.safitri@student.ac.id',
        jurusan: 'Teknik Informatika',
        semester: 4,
        ipk: 3.92,
        status: 'Aktif',
      ),
      MahasiswaAktifModel(
        nama: 'Budi Santoso',
        nim: '2341760003',
        email: 'budi.santoso@student.ac.id',
        jurusan: 'Teknik Informatika',
        semester: 6,
        ipk: 3.70,
        status: 'Aktif',
      ),
    ];
  }
}
