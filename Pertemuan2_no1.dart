/// Library agar bisa menggunakan input
import 'dart:io';

void main() {
  /// Menampilkan hasil
  print("Luas lingkaran adalah ${hitungLuas()}");
}

num hitungLuas() {
  /// Variabel konstanta dan input
  final phi1 = 3.14;
  final phi2 = 22 / 7;
  double? jariJari = double.parse(stdin.readLineSync()!);

  /// Logic untuk pengecekan konstanta phi yang digunakan
  if (jariJari % 7 == 0) {
    /// Menghasilkan hasil bulat, 
    return (phi2 * jariJari * jariJari).toInt();
  } else {
    /// Menghasilkan hasil desimal, kecuali kelipatan 10
    return phi1 * jariJari * jariJari;
  }
}
