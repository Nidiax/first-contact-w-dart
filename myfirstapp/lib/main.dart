import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //para quitar la etiqueta de debug
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Music Player'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}