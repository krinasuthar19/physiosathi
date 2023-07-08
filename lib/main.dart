import 'package:flutter/material.dart';
import 'package:physio_sathi/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto', canvasColor: Colors.white),
      home: const SafeArea(child: Welcome()),
    );
  }
}
