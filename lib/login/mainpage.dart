import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/homepage/homePageNew.dart';
import 'package:myapp/login/loginscreen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    
    late GoogleSignInAccount usrObj;
    
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyHomePage(title: '', email: '', name: '',);
          } else {
            return LogScreen();
          }
        },
      ),
    );
  }
}
