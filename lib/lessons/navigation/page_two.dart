import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Flutter - Page Two'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Page Two'),
      ),
    );
  }
}
