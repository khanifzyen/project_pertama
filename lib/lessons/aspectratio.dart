import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Flutter - AspectRatio'),
      ),
      body: AspectRatio(
        aspectRatio: 180 / 240,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
