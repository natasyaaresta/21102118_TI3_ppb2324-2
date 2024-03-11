//OOP (Object Oriented Programing)
//[7].Class
      class Hewan {
        String nama;
        int umur;
        double berat;

        Hewan(this.nama, this.umur, this.berat);

      void makan() {
          print('$nama makan.');
          berat = berat + 0.2;
        }
        
        void tidur() {
          print('$nama sedang tidur');
        }
      }
      void main() {
        var kucing = Hewan('Ketty', 2, 2.0);
        kucing.makan();
        kucing.tidur();
        print('Nama: ${kucing.nama}');
        print('Umur: ${kucing.umur} tahun');
        print('Berat: ${kucing.berat} kg');
      }

//[10]. Abstract Class
        // Definisi kelas abstrak Hewan
      //   abstract class Hewan {
      //     String nama;
      //     int umur;
      //     double berat;

      //     Hewan(this.nama, this.umur, this.berat);

      //     // Metode makan dideklarasikan sebagai metode abstrak
      //   void makan();

      //   void tidur() {
      //     print('$nama sedang tidur');
      //   }
      // }

      //   // Kelas turunan Kucing dari Hewan
      //   class Kucing extends Hewan {
      //     // Constructor untuk kelas Kucing
      //     Kucing(String nama, int umur, double berat) : super(nama, umur, berat);

      //     // Implementasi metode makan dari kelas Hewan
      //   @override
      //   void makan() {
      //     print('$nama makan.');
      //     berat = berat + 0.2;
      //   }
      // }

      //   void main() {
      //     // Membuat objek dari kelas Kucing
      //     var kucing = Kucing('Melati', 2, 2.0);
      //     kucing.makan();
      //     kucing.tidur();
      //     print('Nama: ${kucing.nama}');
      //     print('Umur: ${kucing.umur} tahun');
      //     print('Berat: ${kucing.berat} kg');
      //   }




