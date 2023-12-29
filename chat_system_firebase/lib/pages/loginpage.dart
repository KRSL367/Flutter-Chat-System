import 'package:chat_system_firebase/components/my_button.dart';
import 'package:chat_system_firebase/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.message,
                  size: 100,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Welcome back, Please enjoy your time here!",
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                ),
                const SizedBox(
                  height: 50,
                ),

                //Email Textfield
                MyTextField(
                  controller: emailController,
                  hinttext: 'Enter your Email',
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 10,
                ),

                MyTextField(
                  controller: passwordController,
                  hinttext: 'Enter your Password',
                  obscuretext: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                //Sign In Button
                MyButton(onTap: signIn, text: "Login"),

                const SizedBox(
                  height: 20,
                ),
                //Haven't sign Up?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not registered?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register Now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
