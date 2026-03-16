import '../models/mahasiswa_model.dart';

class MahasiswaRepository {
  /// Mendapatkan daftar mahasiswa
  Future<List<MahasiswaModel>> getMahasiswaList() async {
    // Simulasi network delay
    await Future.delayed(const Duration(seconds: 1));

    // Data dummy mahasiswa
    return [
      MahasiswaModel(
        nama: 'Raka Pratama',
        nim: '2341760001',
        email: 'raka.pratama@student.ac.id',
        jurusan: 'Teknik Informatika',
        angkatan: '2023',
      ),
      MahasiswaModel(
        nama: 'Dian Safitri',
        nim: '2341760002',
        email: 'dian.safitri@student.ac.id',
        jurusan: 'Teknik Informatika',
        angkatan: '2023',
      ),
      MahasiswaModel(
        nama: 'Budi Santoso',
        nim: '2341760003',
        email: 'budi.santoso@student.ac.id',
        jurusan: 'Teknik Informatika',
        angkatan: '2023',
      ),
      MahasiswaModel(
        nama: 'Sari Wulandari',
        nim: '2341760004',
        email: 'sari.wulandari@student.ac.id',
        jurusan: 'Teknik Informatika',
        angkatan: '2024',
      ),
    ];
  }
}
