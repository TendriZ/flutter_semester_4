import 'dart:io';

void main() {
  // Map<String, String> data = {
  //   'Anang': '081234567890',
  //   'Arman': '082345678901',
  //   'Doni': '083456789012',
  // };
  // print('Data awal: $data');

  // //Add data
  // data['Rio'] = '084567890123';
  // print('Data setelah ditambahkan: $data');

  // //Access data according to key
  // print("Nomor Anang: ${data['Anang']}");

  // //Change data
  // data['Anang'] = '089999999999';
  // print('Data setelah diubah: $data');

  // //Delete data
  // data.remove('Doni');
  // print('Data setelah dihapus: $data');

  // //Check data according to key
  // print('Apakah Arman ada? ${data.containsKey('Arman')}');
  // print('Apakah Doni ada? ${data.containsKey('Doni')}');

  // //Count the number of data
  // print('Jumlah data: ${data.length}');

  // //Listing all keys
  // print('Semua key: ${data.keys.toList()}');

  // //Listing all values
  // print('Semua value: ${data.values.toList()}');
  Map<String, String> dataMahasiswa = {
    'NIM': '',
    'Nama': '',
    'Jurusan': '',
    'IPK': '',
  };
  // single input
  print("=== INPUT MAHASISWA ===");
  stdout.write("Masukkan NIM: ");
  String nim = stdin.readLineSync()!;
  dataMahasiswa['NIM'] = nim;
  stdout.write("Masukkan Nama: ");
  String nama = stdin.readLineSync()!;
  dataMahasiswa['Nama'] = nama;
  stdout.write("Masukkan Jurusan: ");
  String jurusan = stdin.readLineSync()!;
  dataMahasiswa['Jurusan'] = jurusan;
  stdout.write("Masukkan IPK: ");
  String ipk = stdin.readLineSync()!;
  dataMahasiswa['IPK'] = ipk;
  print("");
  print("Data Mahasiswa: $dataMahasiswa");
  print("");

  // multiple input
  print("=== INPUT MULTIPLE MAHASISWA ===");
  stdout.write("Masukkan jumlah mahasiswa: ");
  print("");

  int jumlahMahasiswa = int.parse(stdin.readLineSync()!);
  int i = 0;

  while (i < jumlahMahasiswa) {
    print("--- Mahasiswa ke-${i + 1} ---");
    stdout.write("Masukkan NIM: ");
    String nim = stdin.readLineSync()!;
    dataMahasiswa['NIM'] = nim;
    stdout.write("Masukkan Nama: ");
    String nama = stdin.readLineSync()!;
    dataMahasiswa['Nama'] = nama;
    stdout.write("Masukkan Jurusan: ");
    String jurusan = stdin.readLineSync()!;
    dataMahasiswa['Jurusan'] = jurusan;
    stdout.write("Masukkan IPK: ");
    String ipk = stdin.readLineSync()!;
    dataMahasiswa['IPK'] = ipk;
    print("");
    i++;
  }
}
