import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantify_ecommerce_app/screen/home.dart';
import 'package:plantify_ecommerce_app/screen/login.dart';
import 'package:plantify_ecommerce_app/screen/sawal.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff0D986A),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xff0D986A),
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      home: Sawal(),
    );
  }
}
