import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shoping/screens/user-panel/main-screen.dart';

import 'signup.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Sign In ",
            style: TextStyle(fontSize: 45),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              isKeyboardVisible
                  ? SizedBox.shrink()
                  : Column(
                      children: [
                        Lottie.asset(
                            "assets/images/Animation - 1700730664551.json")
                      ],
                    ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                width: Size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: Color.fromARGB(255, 229, 229, 224),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(top: 3.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                width: Size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    cursorColor: Color.fromARGB(255, 229, 229, 224),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        contentPadding: EdgeInsets.only(top: 3.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password? ",
                  style: TextStyle(
                      color: Color.fromARGB(229, 0, 60, 109),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Material(
                color: Color.fromARGB(255, 134, 156, 236),
                child: Container(
                  width: Size.width / 1.5,
                  height: Size.height / 15,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 227, 231),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton.icon(
                    icon: Icon(Icons.arrow_circle_right),
                    label: Text(
                      "Sign in ",
                      style: TextStyle(fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account ?",
                  ),
                  GestureDetector(
                    onTap: () => Get.offAll(() => Signup()),
                    child: Text(
                      "SignUp ",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      );
    });
  }
}
