import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/signIn_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Wisata Candi',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.cyanAccent),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme:
          ColorScheme.fromSeed(seedColor: Colors.cyanAccent).copyWith(
            primary: Colors.black,
            surface: Colors.yellow[50],
          ),
          useMaterial3: true,
        ),
        //home : DetailScreen(Candi: candiList[0]),
        home :profileScreen(),
        //home: signInScreen(),
      );
  }
}