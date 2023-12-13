import 'package:flutter/material.dart';
import 'package:project_pertama/lessons/form/bottomsheet.dart';
import 'package:project_pertama/lessons/form/checkbox.dart';
import 'package:project_pertama/lessons/form/datepicker.dart';
import 'package:project_pertama/lessons/form/dialog.dart';
import 'package:project_pertama/lessons/form/dropdown.dart';
import 'package:project_pertama/lessons/form/radio.dart';
import 'package:project_pertama/lessons/form/snackbar.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextField(),
            SizedBox(height: 5),
            MyDropDown(),
            SizedBox(height: 5),
            MySwitch(),
            SizedBox(height: 5),
            MyRadio(),
            SizedBox(height: 5),
            MyCheckbox(),
            SizedBox(height: 5),
            MyDatePicker(),
            SizedBox(height: 5),
            MyDialog(),
            SizedBox(height: 5),
            MyBottomSheet(),
            SizedBox(height: 5),
            MySnackBar(),
          ],
        ),
      ),
    );
  }
}
