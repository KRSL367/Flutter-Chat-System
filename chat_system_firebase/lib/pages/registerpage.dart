import 'package:chat_system_firebase/components/my_button.dart';
import 'package:chat_system_firebase/components/my_text_field.dart';
import 'package:chat_system_firebase/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  Future<void> signUp() async {
    if (passwordController.text != confirmpasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password do not match'),
        ),
      );
      return;
    }
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

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
                  "Let's create an account, SIGN UP!",
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
                  height: 10,
                ),

                MyTextField(
                  controller: confirmpasswordController,
                  hinttext: 'Re-enter your Password',
                  obscuretext: true,
                ),

                const SizedBox(
                  height: 20,
                ),

                //Sign up Button
                MyButton(onTap: signUp, text: "Sign Up"),

                const SizedBox(
                  height: 20,
                ),
                //Already sign Up?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already registered?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
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
