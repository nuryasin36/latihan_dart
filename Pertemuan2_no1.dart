import 'package:tugas1/tugas1.dart' as tugas1;
import 'dart:io';

void main() {
  print("Luas lingkaran adalah ${hitungLuas()}");
}

num hitungLuas() {
  double phi1 = 3.14;
  double phi2 = 22 / 7;
  double? r = double.parse(stdin.readLineSync()!);

  if (r % 7 == 0) {
    return phi2 * r * r;
  } else {
    return phi1 * r * r;
  }
}
