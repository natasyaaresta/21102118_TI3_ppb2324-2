//[1].Hello World
      void main() {
        print('Hello, World!');
      }

      // void main() {
      // var name = 'Natasya';
      // var year = 2003;
      // var bulan = ['Maret', 'April', 'Mei', 'Juni'];

      // print('$name $year $bulan');
      // }

      // void main() {
      //   String greetings = 'Hello Dart!';
      //   int year = 2023;

      //   print(greetings);
      //   print('The year is: $year');
      // }

//[2].Control Flow
    //[a].If and Else
          // void main() {
          //   int angka = 10;
          //   if (angka > 0) {
          //     print('bilangan positif');
          //   } else if (angka < 0) {
          //     print('bilangan negatif');
          //   }
          // }

    //[b].Switch Case
        //   void main() {
        //   String day = 'Monday'; 

        //   switch (day) {
        //     case 'Monday':
        //       print('Start of the workweek');
        //       break;
        //     case 'Tuesday':
        //       print('Second day of the week');
        //       break;
        //     case 'Wednesday':
        //       print('Midweek');
        //       break;
        //     case 'Thursday':
        //       print('Almost there!');
        //       break;
        //     case 'Friday':
        //       print('TGIF! End of the workweek');
        //       break;
        //     default:
        //       print('Weekend or an unknown day');
        //   }
        // }

    //[c].For Loops
          // void main() {
          //   for (int i = 1; i <= 3; i++ ) {
          //     print(i);
          //   }
          // }
          
    //[d].While and do-while
          //While
          // void main() {
          //   var i = 1;
          //   while (i <= 3) {
          //     print(i);
          //     i++;
          //   }
          // }

          //do-While
          // void main() {
          //   var i = 1;
          //   do {
          //     print(i);
          //     i++;
          //   } while (i <= 3);
          // }

//[3].List
      //Tipe Integer
    //   void main() {
    //   List<int> numberList = [1, 2, 3, 4, 5];

    //   // Cetak semua angka dalam list
    //   print('$numberList');
    // }

    //Dynamic
  //   void main() {
  //   List<dynamic> dynamicList = [1, 'Informatika', true];

  //   // Cetak semua elemen dalam list
  //   print('$dynamicList');
  // }

//[4].Spread Operator
      // void main() {
      //   var buah = ['Mangga', 'Apel', 'Jeruk', 'Manggis'];
      //   var hewan = ['Ayam', 'Kelinci', 'Kucing'];
      //   var allFavorites = [buah, hewan];
      //   print(allFavorites);
      // }

      // void main () {
      //   var buah = ['Mangga', 'Apel', 'Jeruk', 'Manggis'];
      //   var hewan = ['Ayam', 'Kelinci', 'Kucing'];
      //   var allFavorites = [...buah,...hewan];
      //   print(allFavorites);
      // }

//[5].Set
      // void main(){
      //   var angkaSet = {1, 4, 6};
      //   Set<int> bilanganSet = new Set.from([1, 4, 6, 4, 1]);
      //   print('angkaSet : $angkaSet');
      //   print('bilanganSet : $bilanganSet');
      // }

//[6].Map
      // void main() {
      //   var kota = {
      //     'Semarang': 'Jawa Tengah',
      //     'Bandung': 'Jawa Barat',
      //     'Malang': 'Jawa Timur'
      //   };
      //   print(kota);
      // }

//[12]. Enumerated Types
        // enum Pelangi {
        //   merah, jingga, kuning, hijau, biru, nila, ungu
        // }
        // enum Status {
        //   Todo, In_Progress, In_Review, Done
        // }
        // void main() {
        //   print(Pelangi.values);
        //   print(Pelangi.kuning);
        //   print(Pelangi.biru.index);
        // }

//Paradigma Functional Programming
//[13]. Pure functions
        // int sum(int angka1, int angka2) {
        //   return angka1 + angka2;
        // }
        // void main() {
        //   int hasil = sum(10, 20);
        //   print('Hasil penjumlahan: $hasil');
        // }

//[14]. Recursion
        // int fibonacci(n) {
        //   if (n <= 0) {
        //     return 0;
        //   } else if(n == 1) {
        //     return 1;
        //   } else {
        //     return fibonacci(n - 1) + fibonacci(n - 2);
        //   }
        // }
        // void main() {
        //   int n = 10; 
        //   int result = fibonacci(n);
        //   print('Nilai Fibonacci untuk n = $n adalah $result');
        // }

//[15]. Anonymous Functions
        // void main() {
        // // ignore: prefer_function_declarations_over_variables
        // var sum = (int angka1, int angka2) {
        //   return angka1 + angka2;
        // };
        // // ignore: prefer_function_declarations_over_variables
        // Function printLambda = () {
        //   print('Ini adalah fungsi lambda');
        // };
        //   printLambda();
        //   print(sum(3, 4));
        // }

        // void main() {
        // // ignore: prefer_function_declarations_over_variables
        // var sum = (int angka1, int angka2) => angka1 + angka2;
        //   // ignore: prefer_function_declarations_over_variables
        //   Function printLambda = () => print('This is lambda function');
        //   printLambda();
        //   print(sum(3, 4));
        // }

//[16]. Higher-Order Functions
        // void main() {
        //   void contohHigherOrderFunction(String message, Function myFunction) {
        //     print(message);
        //     print(myFunction(3, 4));
        //   }
        //   // Opsi 1
        //   Function sum = (int num1, int num2) => num1 + num2;
        //   contohHigherOrderFunction('Hello', sum);
        //   // Opsi 2
        //   contohHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
        // }

//[17]. Closures
        // void main() {
        //   var contohClosure = penjumlahan(2);
        //     contohClosure();
        //     contohClosure();
        //   }
        //   Function penjumlahan(base) {
        //     var a = 1;
        //     return () => print("Nilainya adalah ${base + a++}");
        //   }

//[18].Dart Type System
    //[a].Generic
          // void main() {
          //   List<int> bilangan = [1, 2, 3, 4, 5];
          //   List<String> kata = ['Informatika', 'Flutter', 'Pemrograman'];
          //   List<dynamic> dynamicList = [1, 2, 3, 'empat']; // List<dynamic>

          //   print('$bilangan $kata $dynamicList');
          // }

    //[b].Type Inference
          // void main() {
          //   Map<String, dynamic> jurusan = {'prodi': 'Informatika', 'angkatan': 2021};

          //   print('Prodi: ${jurusan['prodi']}');
          //   print('Angkatan: ${jurusan['angkatan']}');
          // }   

//5 kata kunci dalam Effective Dart
//[19].DO
    //[a].DO name type using UpperCamelCase
          // abstract class Hewan {}
          // abstract class Mammal extends Hewan {}
          // mixin Flyable {}

          // class Meong extends Mammal with Flyable {
          //   String nama;

          //   Meong(this.nama);

          //   void fly() {
          //     print('$nama is flying');
          //   }
          // }
          // void main() {
          //   Meong kucing = Meong('Kucing');
          //   kucing.fly(); // Output: Kucing is flying
          // }

    //[b].DO use ?? to convert null to a boolean value.
          // class Partnership {
          //   bool isPartnership;

          //   Partnership(this.isPartnership);
          // }
          // void main() {
          //   Partnership? partnership = Partnership(true);
          //   if (partnership.isPartnership == true) {
          //     print('Sudah bekerja sama');
          //   }
          // }

//[20]. DON’T
        // void main() {
        //   var instance; // good
        //   var mInstance; // bad

        //   print('Instance: $instance'); // Output: Instance: null
        //   print('MInstance: $mInstance'); // Output: MInstance: null
        // }

//[21]. PREFER
        // Returns `true` if [username] and [password] inputs are valid.
        // bool isValid(String username, String password) {
        //   // Check if username and password length is more than 5 characters
        //   if (username.length > 5 && password.length > 5) {
        //     return true;
        //   } else {
        //     return false;
        //   }
        // }

        // void main() {
        //   // Contoh penggunaan fungsi isValid
        //   String username = 'natasya123';
        //   String password = 'nata123';
          
        //   bool result = isValid(username, password);
          
        //   if (result) {
        //     print('Username dan password valid.');
        //   } else {
        //     print('Username dan password harus memiliki minimal 6 karakter.');
        //   }
        // }

//[22]. AVOID
        // void main() {
        //   String nama = 'Natasya';
        //   int birthYear = 2003;
        //   int thisYear = DateTime.now().year;

        //   print('Hallo, $nama, berumur ${thisYear - birthYear} tahun.');
        // }

//[23]. CONSIDER
        // void main() {
        //   // Contoh baik
        //   if (login.isSuccess) {
        //     print('Hallo! Selamat datang kembali');
        //   }

        //   // Contoh buruk
        //   if (store.close) {
        //     print('Toko tutup');
        //   }
        // }

        // class Login {
        //   bool isSuccess = true; // asumsikan login berhasil
        // }

        // class Store {
        //   bool close = false; // asumsikan toko buka
        // }

        // var login = Login();
        // var store = Store();
          
//[24]. Future
        // void main() {
        //   getProduct().then((result) {
        //     print('Your product: $result');
        //   });
        // }
        // Future<String> getProduct() {
        //   return Future.delayed(Duration(seconds: 3), () {
        //     return 'Matcha Latte';
        //   });
        // }

//[25]. Completed with data
        // void main() {
        //   getProduct().then((value) {
        //     print('You product: $value');
        //   });
        //     print('Getting your product...');
        // }
        // Future<String> getProduct() {
        //   return Future.delayed(Duration(seconds: 3), () {
        //     return 'Matcha Latte';
        //   });
        // }

//[26]. Completed with error
      //   void main() {
      //   print('Getting your product...');

      //   getProduct().then((value) {
      //     print('Your product: $value');
      //   }).catchError((error) {
      //     print('Sorry. $error');
      //   });
      // }

      // Future<String> getProduct() {
      //   return Future.delayed(Duration(seconds: 3), () {
      //     var isProductAvailable = false;
      //     // ignore: dead_code
      //     if (isProductAvailable) {
      //       return 'Coffee Boba';
      //     } else {
      //       throw 'Our stock is not enough.';
      //     }
      //   });
      // }

//[27]. Future dengan async-await
        // void main() async {
        //     print('Getting your product...');
        //   try {
        //     var order = await getProduct();
        //       print('You order: $order');
        //   } catch (error) {
        //     print('Sorry. $error');
        //   } finally {
        //     print('Thank you');
        //   }
        // }
        // Future<String> getProduct() {
        //   return Future.delayed(Duration(seconds: 3), () {
        //   var isProductAvailable = false;
        //     // ignore: dead_code
        //     if (isProductAvailable) {
        //       return 'Matcha Latte';
        //     } else {
        //       throw 'Our stock is not enough.';
        //     }
        //   });
        // }
        
