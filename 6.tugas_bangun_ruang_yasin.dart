import 'dart:io';

class BangunRuang {
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;

  double volume() {
    return 0;
  }
}

class Balok extends BangunRuang {
  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  double sisi = 1;

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

void main() {
  BangunRuang bangun = Balok();
  bangun.panjang = 2;
  bangun.lebar = 3;
  bangun.tinggi = 4;
  print('Volume balok: ${bangun.volume()}');

  bangun = Kubus();
  (bangun as Kubus).sisi = 5;
  print('Volume kubus: ${bangun.volume()}');
}
