import 'package:flutter/material.dart';
//import 'package:new_todolist_flutter/pages/home_page.dart';
import './pages/home_page.dart';
//import 'package:new_todolist_flutter/constants/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do List',

      //theme: ThemeData(
       // primarySwatch: Colors.red,
       // visualDensity: VisualDensity.adaptivePlatformDensity,
     // ),

      home: MyHomePage(),
    );
  }
}