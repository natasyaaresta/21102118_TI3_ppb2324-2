import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_project/bloc/login/login_cubit.dart';
import 'package:firebase_auth_project/ui/home_screen.dart';
import 'package:firebase_auth_project/ui/phone_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();
  bool passInvisible = false;

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await 
  gUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    return await 
  FirebaseAuth.instance.signInWithCredential(credential).then(
      (value) async => await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Loading..')));
          }
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.red,
              ));
          }
          if (state is LoginSuccess) {
            // context.read<AuthCubit>().loggedIn();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            Navigator.pushNamedAndRemoveUntil(
                context, rHome, (route) => false);
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: ListView(
            children: [
              Text("Login", style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xff3D4DE0)
              ),),
              SizedBox(height: 15,),
              Text("Silahkan masukan e-mail dan password anda", style: TextStyle(
                  fontSize: 16,
              ),),
              SizedBox(height: 25,),
              Text("e-mail", style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold
              ),),
              TextFormField(
                controller: emailEdc,
              ),
              SizedBox(height: 10,),
              Text("password", style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold
              ),),
              TextFormField(
                controller: passEdc,
                decoration: InputDecoration(

                  suffixIcon: IconButton(
                    icon: Icon(passInvisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passInvisible = !passInvisible;
                      });
                    },
                  ),
                ),
                obscureText: !passInvisible,
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                context
                    .read<LoginCubit>()
                    .login(email: emailEdc.text, password: passEdc.text);
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3D4DE0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
              child: Text(
                    "Login", 
                    style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 24, 
                    color: Colors.white),
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              GestureDetector(
                onTap: () {
                  signInWithGoogle();
                },
                child: const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                  'https://banner2.cleanpng.com/20180412/liq/kisspng-google-logo-google-search-advertising-google-5acf6363115c02.0087192015235408350711.jpg'),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push( 
                    context, MaterialPageRoute( 
                      builder: (context) => PhoneAuthScreen()));
                },
                child: const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                  'https://www.freepnglogos.com/uploads/logo-telepon-png/blue-circle-telepon-26.png'),
                ),
              )
            ],
          ),

              SizedBox(height: 25,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Menengahkan elemen horizontal
                    children: [
                      Text("Belum punya akun ?"),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/register');
                      },
                          child: Text("Daftar", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            color: Color(0xff3D4DE0)
                          ),))
                    ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
