import 'dart:io';

void main() {
  // Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  // print('Burung: $burung');

  Set<String> dataSet = {};
  int totalData = 0;
  while (totalData <= 0) {
    stdout.write('Masukkan jumlah dataSet: ');
    String? input = stdin.readLineSync()!;
    try {
      totalData= int.parse(input!);
      if (totalData <= 0) {
        print('Jumlah harus lebih dari 0.');
      }
    } catch (e) {
      print('Input tidak valid, masukkan angka.');
    }
  }

  for (int i = 0; i < totalData; i++) {
    stdout.write('Masukkan data ke-' + (i + 1).toString() + ': ');
    String data = stdin.readLineSync()!;
    dataSet.add(data);
  }

  print("=== SEMUA DATA ===");
  int i = 0;
  while (i < dataSet.length) {
    print((i + 1).toString() + '.' + dataSet.elementAt(i));
    i++;
  }

  //total data
  print('Total data: $totalData');
  
  // data baru
  stdout.write("Masukkan data baru : ");
  String dataBaru = stdin.readLineSync()!;
  dataSet.add(dataBaru);
  print('Data "$dataBaru" berhasil ditambahkan!');

  //data duplikat
  stdout.write("Masukkan data duplikat : ");
  String dataDuplikat = stdin.readLineSync()!;
  if (dataSet.contains(dataDuplikat)) {
    print('Data "$dataDuplikat" sudah ada, tidak bisa ditambahkan!');
  } else {
    dataSet.add(dataDuplikat);
    print('Data "$dataDuplikat" berhasil ditambahkan!');
  }

  // data dihapus
  stdout.write("Masukkan data yang ingin dihapus : ");
  String dataYangDihapus = stdin.readLineSync()!;
  if (dataSet.contains(dataYangDihapus)) {
    dataSet.remove(dataYangDihapus);
    print('Data "$dataYangDihapus" berhasil dihapus!');
  } else {
    print('Data "$dataYangDihapus" tidak ditemukan!');
  }

  // data dicek
  stdout.write("Masukkan data yang ingin dicek : ");
  String dataYangDicek = stdin.readLineSync()!;
  if (dataSet.contains(dataYangDicek)) {
    print('Data "$dataYangDicek" ditemukan!');
  } else {
    print('Data "$dataYangDicek" tidak ada di Set!');
  }

  // Input jumlah data
  // int count = 0;
  // while (count <= 0) {
  //   stdout.write('Masukkan jumlah data: ');
  //   String? input = stdin.readLineSync();
  //   try {
  //     count = int.parse(input!);
  //     if (count <= 0) print('Jumlah harus lebih dari 0.');
  //   } catch (e) {
  //     print('Input tidak valid, masukkan angka.');
  //   }
  // }

  // // Input data ke set
  // for (int i = 0; i < count; i++) {
  //   stdout.write('Masukkan data ke-' + (i + 1).toString() + ': ');
  //   String x = stdin.readLineSync()!;
  //   dataSet.add(x);
  // }

  // // Tampil berdasarkan index tertentu
  // stdout.write('Masukkan index yang ingin ditampilkan: ');
  // int tampilIndex = int.parse(stdin.readLineSync()!);
  // List<String> tempList = dataSet.toList();
  // if (tampilIndex >= 0 && tampilIndex < tempList.length) {
  //   print('Data pada Index ' + tampilIndex.toString() + ': ' + tempList[tampilIndex]);
  // } else {
  //   print('Index tidak valid.');
  // }

  // // Ubah berdasarkan index tertentu
  // stdout.write('Masukkan index yang ingin diubah: ');
  // int ubahIndex = int.parse(stdin.readLineSync()!);
  // tempList = dataSet.toList();
  // if (ubahIndex >= 0 && ubahIndex < tempList.length) {
  //   stdout.write('Masukkan data baru: ');
  //   String dataBaru = stdin.readLineSync()!;
  //   String dataLama = tempList[ubahIndex];
  //   dataSet.remove(dataLama);
  //   dataSet.add(dataBaru);
  //   print('Data berhasil diubah.');
  // } else {
  //   print('Index tidak valid.');
  // }

  // // Hapus berdasarkan index tertentu
  // stdout.write('Masukkan index yang ingin dihapus: ');
  // int hapusIndex = int.parse(stdin.readLineSync()!);
  // tempList = dataSet.toList();
  // if (hapusIndex >= 0 && hapusIndex < tempList.length) {
  //   dataSet.remove(tempList[hapusIndex]);
  //   print('Data berhasil dihapus.');
  // } else {
  //   print('Index tidak valid.');
  // }

  // // Tampilkan hasil akhir
  // print('');
  // print('=== SEMUA DATA ===');
  // List<String> finalList = dataSet.toList();
  // for (int i = 0; i < finalList.length; i++) {
  //   print('Index ' + i.toString() + ': ' + finalList[i]);
  // }
}
