void buatKombinasi(String huruf, String sementara, int panjang) {
  if (sementara.length == panjang) {
    print(sementara);
    return;
  }

  for (int indeks = 0; indeks < huruf.length; indeks++) {
    buatKombinasi(huruf, sementara + huruf[indeks], panjang);
  }
}

void main() {
  int jumlahKarakter = 3;
  String daftarHuruf = "abc";
  print("Jumlah karakter = $jumlahKarakter");
  buatKombinasi(daftarHuruf, "", jumlahKarakter);
}
