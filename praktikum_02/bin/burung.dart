//[11].Implicit Interface 
import 'hewan.dart';

class Flyable {
  void fly() {}
}

class Burung extends Hewan implements Flyable {
  String warna;

  Burung(String nama, int umur, double berat, this.warna)
      : super(nama, umur, berat);

  @override
  void fly() {
    print('$nama is flying');
  }
}

void main() {
  Burung elang = Burung('Elang', 5, 2.5, 'brown');
  elang.fly(); // Output: Elang is flying
}


