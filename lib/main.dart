import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdfs_4th_grade/modules/home_screen.dart';
import 'package:pdfs_4th_grade/shared/colors.dart';
import 'firebase_options.dart';

Future<void> main() async {
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: mainColor,
      ),
      home: const HomeScreen(),
    );
  }
}
