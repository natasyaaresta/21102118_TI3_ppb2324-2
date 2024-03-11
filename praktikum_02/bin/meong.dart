//[9].Inheritance
import 'hewan.dart';

class Meong extends Hewan {
  String warnaBulu;

  Meong(
    String nama, 
    int umur, 
    double berat, 
    this.warnaBulu,
    ) : super(nama, umur, berat);       
    
  void jalan() {
    print('$nama berjalan');
  }

  void warna() {
    print('$nama berwarna $warnaBulu');
  }
}

void main() {
  var kucing = Meong('Ketty', 2, 2.0, 'Putih');
  kucing.jalan();
  kucing.makan();
  kucing.warna();
  print('Nama: ${kucing.nama}');
  print('Umur: ${kucing.umur} tahun');
  print('Berat: ${kucing.berat} kg');
}
