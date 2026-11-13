import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget{
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<profileScreen> {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '' ;
  String userName = '' ;
  int favoriteCandiCount = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200, width: double.infinity, color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16)
            ,)
            Column(
              children: [
            ],
          ),
        ],
      ),
    );
  }  
}