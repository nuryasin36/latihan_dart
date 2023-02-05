void main() {
  //Deklarasi
  String nama;
  int usia;
  String asal;

  //Isi
  nama = "Yasin";
  usia = 100;
  asal = "Purworejo";

  //Variabel 1
  print("Hallo, saya $nama. Usia saya $usia tahun. Saya berasal dari $asal");

  //Variabel 2
  print(
      "Hallo, saya $nama. Usia saya 100 tahun ke depan adalah ${usia + 100} tahun. Saya berasal dari $asal");

  //Variabel 3
  print("Hallo, saya " +
      "$nama" +
      "." +
      " Usia saya" +
      " " +
      usia.toString() +
      " " +
      "tahun" +
      ".");
}
