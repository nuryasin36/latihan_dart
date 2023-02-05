import 'package:no1/no1.dart' as no1;
import 'dart:io';

void main() {
  print("Nilai Anda adalah ${hitungNilai()}");
}

String hitungNilai() {
  int? nilai = int.parse(stdin.readLineSync()!);

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
