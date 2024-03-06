import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_media_app/themes/dark_mode.dart';
import 'package:social_media_app/themes/light_mode.dart';
import 'package:social_media_app/auth/login_or_register.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}