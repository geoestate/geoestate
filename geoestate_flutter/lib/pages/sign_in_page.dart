import 'package:flutter/material.dart';
import 'package:geoestate_flutter/src/widgets/custom_button.dart';
import 'package:geoestate_flutter/src/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoEstate'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1526666923127-b2970f64b422?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Card(
              elevation: 6,
              child: SizedBox(
                height: 400,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Authentication',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // CustomTextfield(
                      //     title: 'Email', controller: emailController),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // CustomTextfield(
                      //   title: 'Password',
                      //   controller: passwordController,
                      //   isPass: true,
                      //   icon: Icons.lock,
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // CustomButton(
                      //   text: 'Login',
                      //   onClick: () {
                      //     Provider.of<UserAuthProvider>(context, listen: false)
                      //         .loginUser(
                      //       emailController.text.trim(),
                      //       passwordController.text.trim(),
                      //       context,
                      //     );
                      //   },
                      // )
                      SignInWithEmailButton(
                        caller: client.modules.auth,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
