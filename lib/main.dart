import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:cbigdtuw04/Pages/SignUpScreen.dart';
import 'package:cbigdtuw04/Pages/MyPhone.dart';
import 'Pages/LoggIn.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roomie UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogInScreen(),
    );
  }
} //MaterialApp
