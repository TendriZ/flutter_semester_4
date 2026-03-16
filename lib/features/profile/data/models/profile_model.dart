class ProfileModel {
  final String nama;
  final String nim;
  final String email;
  final String jurusan;
  final String noTelp;
  final String alamat;

  ProfileModel({
    required this.nama,
    required this.nim,
    required this.email,
    required this.jurusan,
    required this.noTelp,
    required this.alamat,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      nama: json['nama'] ?? '',
      nim: json['nim'] ?? '',
      email: json['email'] ?? '',
      jurusan: json['jurusan'] ?? '',
      noTelp: json['noTelp'] ?? '',
      alamat: json['alamat'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'nim': nim,
      'email': email,
      'jurusan': jurusan,
      'noTelp': noTelp,
      'alamat': alamat,
    };
  }
}
