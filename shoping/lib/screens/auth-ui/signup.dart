import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:lottie/lottie.dart';

import 'signinscreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
            "Sign UP ",
            style: TextStyle(fontSize: 45),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              Column(
                children: [Lottie.asset("assets/images/signup.json")],
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
                        hintText: "Name",
                        prefixIcon: Icon(Icons.man_2_rounded),
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
                      "Sign Up ",
                      style: TextStyle(fontSize: 30),
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
                height: 20,
              ),
            ]),
          ),
        ),
      );
    });
  }
}
