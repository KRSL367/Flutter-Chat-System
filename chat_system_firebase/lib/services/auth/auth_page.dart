import 'package:chat_system_firebase/pages/homepage.dart';
import 'package:chat_system_firebase/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is logged in
            if (snapshot.hasData) {
              return const Homepage();
            }
            //user is not logged in
            else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}
