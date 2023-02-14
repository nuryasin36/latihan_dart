class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  List<Hewan> muatan;

  Mobil(this.kapasitas) : muatan = [];

  void tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = 0;
    muatan.forEach((hewan) => totalBeratMuatan += hewan.berat);

    if (totalBeratMuatan + hewan.berat > kapasitas) {
      print("Kapasitas mobil tidak mencukupi");
    } else {
      muatan.add(hewan);
      print("Hewan berhasil ditambahkan ke dalam muatan");
    }
    print(totalBeratMuatan);
  }
}

void main() {
  Hewan harimau = Hewan(20000.0);
  Hewan jerapah = Hewan(1000.0);
  Hewan badak = Hewan(1500.0);

  Mobil mobil1 = Mobil(3000.0);
  mobil1.tambahMuatan(harimau);
  mobil1.tambahMuatan(jerapah);
  mobil1.tambahMuatan(badak);
}
