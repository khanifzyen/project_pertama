import 'package:flutter/material.dart';
import 'package:project_pertama/lessons/button.dart';
import 'package:project_pertama/lessons/container.dart';
import 'package:project_pertama/lessons/scaffold.dart';
import 'package:project_pertama/lessons/text.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyButton(),
    );
  }
}
