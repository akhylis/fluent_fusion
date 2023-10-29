import 'package:fluent_fusion/screens/login_screen.dart';
import 'package:fluent_fusion/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluent_fusion/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluent_fusion/lib/login.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Load widgets first then firebase auth
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluent Fusion',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
