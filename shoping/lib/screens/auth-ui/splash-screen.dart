import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:shoping/screens/auth-ui/welcomescreen.dart';
import 'package:shoping/screens/user-panel/main-screen.dart';
import 'package:shoping/utils/app-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), () {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      body: Container(
        width: Size.width,
        child: Column(children: <Widget>[
          Expanded(
            child: Container(
              child: Lottie.asset("assets/images/splash.json"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: Size.width,
            child: Center(
              child: Text(
                AppConstant.appPoweredBy,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
