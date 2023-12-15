import 'package:flutter/material.dart';
import 'package:project_pertama/lessons/aspectratio.dart';
import 'package:project_pertama/lessons/button.dart';
import 'package:project_pertama/lessons/center.dart';
import 'package:project_pertama/lessons/circleavatar.dart';
import 'package:project_pertama/lessons/column.dart';
import 'package:project_pertama/lessons/container.dart';
import 'package:project_pertama/lessons/expanded.dart';
import 'package:project_pertama/lessons/form.dart';
import 'package:project_pertama/lessons/gridview.dart';
import 'package:project_pertama/lessons/icon.dart';
import 'package:project_pertama/lessons/image.dart';
import 'package:project_pertama/lessons/listview.dart';
import 'package:project_pertama/lessons/navigation/page_one.dart';
import 'package:project_pertama/lessons/padding.dart';
import 'package:project_pertama/lessons/row.dart';
import 'package:project_pertama/lessons/scaffold.dart';
import 'package:project_pertama/lessons/sizedbox.dart';
import 'package:project_pertama/lessons/stack.dart';
import 'package:project_pertama/lessons/text.dart';
import 'package:project_pertama/lessons/wrap.dart';

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
      home: const PageOne(),
    );
  }
}
