import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simplethread/firebase_options.dart';
import 'package:simplethread/src/screens/splash_screen.dart';
import 'package:simplethread/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: lightMode,
    );
  }
}
