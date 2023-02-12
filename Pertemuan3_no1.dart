/// Library untuk menampilkan input
import 'dart:io';

void main() {
  /// Menampilkan hasil
  print("Nilai Anda adalah ${hitungNilai()}");
}

String hitungNilai() {
  /// Input
  int? nilai = int.parse(stdin.readLineSync()!);

  /// Function untuk mengetahui nilai
  if (nilai > 70 && nilai <= 100) {
    return "A";
  } else if (nilai < 70 && nilai > 40) {
    return "B";
  } else if (nilai < 40 && nilai > 0) {
    return "C";
  } else {
    return "";
  }
}
