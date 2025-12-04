import 'package:flutter/material.dart';
import 'package:sathi/join_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SathiJoinCallScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

