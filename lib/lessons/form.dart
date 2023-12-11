import 'package:flutter/material.dart';
import 'package:project_pertama/lessons/form/dropdown.dart';
import 'package:project_pertama/lessons/form/switch.dart';
import 'package:project_pertama/lessons/form/textfield.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Flutter - Form'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTextField(),
            SizedBox(height: 5),
            MyDropDown(),
            SizedBox(height: 5),
            MySwitch(),
          ],
        ),
      ),
    );
  }
}