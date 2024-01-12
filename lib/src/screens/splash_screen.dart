import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simplethread/src/auth/login_or_register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String _animation =
      "assets/animation/Black_white_animation.json";

  @override
  State<SplashScreen> createState() => SsplasScreenhState();
}

class SsplasScreenhState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
            // child: login_page(),
            child: const LoginOrRegister(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1, milliseconds: 60),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.scale(
            scale: 1.3,
            child: Lottie.asset(SplashScreen._animation),
          ),
        ],
      ),
    );
  }
}
