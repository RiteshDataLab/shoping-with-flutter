import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

import 'signinscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 156, 236),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 134, 156, 236),
        title: Text(
          "Welcome to Our Space",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Lottie.asset("assets/images/welcome.json"),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Color.fromARGB(255, 134, 156, 236),
              child: Container(
                width: Size.width / 1.1,
                height: Size.height / 12,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 227, 231),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                  icon: Image.asset("assets/images/google.png"),
                  label: Text(
                    "Sign in with google",
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              color: Color.fromARGB(255, 134, 156, 236),
              child: Container(
                width: Size.width / 1.1,
                height: Size.height / 12,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 227, 231),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                  icon: Image.asset("assets/images/email.png"),
                  label: Text(
                    "Sign in with Email",
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
