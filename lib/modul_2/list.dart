import 'dart:io';

void main() {
  // List<String> names = ['Alfa', 'Beta', 'Charlie'];

  // print('Available names: $names');

  // names.add('Delta');
  // print('Names :$ames');
  // print('Elemen pertama: ${names[0]}');
  // print('Elemen kedua: ${names[1]}');

  // names[1] = 'Bravo';
  // print('Names after update: $names');

  // names.remove('Charlie');
  // print('Names after removal: $ames');

  // print('Total data: ${names.length}');

  // print('Listing all names:');
  // for (String name in names) {
  //   print(name);
  // }

  // List<String> dataList = [];

  // print('Data List kosong: $dataList');

  // int count = 0;

  // while (count <= 0) {
  //   stdout.write('Masukkan jumlah list: ');
  //   String? input = stdin.readLineSync();

  //   try {
  //     count = int.parse(input!);
  //     if (count <= 0) {
  //       print('Jumlah list harus lebih dari 0. Silakan coba lagi.');
  //     }
  //   } catch (e) {
  //     print('Input tidak valid. Harap masukkan angka. Silakan coba lagi.');
  //   }
  // }

  // for (int i = 0; i < count; i++) {
  //   stdout.write('Masukkan data ke-${i + 1}: ');
  //   String x = stdin.readLineSync()!;
  //   dataList.add(x);
  // }

  // print('Data setelah dibuat');
  // print(dataList);

  // List<String> sortedList = dataList..sort();
  // print('Data setelah diurutkan:');
  // print(sortedList);

  List<String> dataList = [];

  int count = 0;
  while (count <= 0) {
    stdout.write('Masukkan jumlah data: ');
    String? input = stdin.readLineSync();
    try {
      count = int.parse(input!);
      if (count <= 0) print('Jumlah harus lebih dari 0.');
    } catch (e) {
      print('Input tidak valid, masukkan angka.');
    }
  }

  for (int i = 0; i < count; i++) {
    stdout.write('Masukkan data ke-${i + 1}: ');
    String x = stdin.readLineSync()!;
    dataList.add(x);
  }

  stdout.write('Masukkan index yang ingin ditampilkan: ');
  int tampilIndex = int.parse(stdin.readLineSync()!);
  if (tampilIndex >= 0 && tampilIndex < dataList.length) {
    print('Data pada Index $tampilIndex: ${dataList[tampilIndex]}');
  } else {
    print('Index tidak valid.');
  }

  stdout.write('Masukkan index yang ingin diubah: ');
  int ubahIndex = int.parse(stdin.readLineSync()!);
  if (ubahIndex >= 0 && ubahIndex < dataList.length) {
    stdout.write('Masukkan data baru: ');
    String dataBaru = stdin.readLineSync()!;
    dataList[ubahIndex] = dataBaru;
    print('Data berhasil diubah.');
  } else {
    print('Index tidak valid.');
  }

  stdout.write('Masukkan index yang ingin dihapus: ');
  int hapusIndex = int.parse(stdin.readLineSync()!);
  if (hapusIndex >= 0 && hapusIndex < dataList.length) {
    dataList.removeAt(hapusIndex);
    print('Data berhasil dihapus.');
  } else {
    print('Index tidak valid.');
  }

  print('');
  print('=== SEMUA DATA ===');
  for (int i = 0; i < dataList.length; i++) {
    print('Index $i: ${dataList[i]}');
  }
}
