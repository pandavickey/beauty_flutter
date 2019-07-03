import 'package:beauty_flutter/page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beautiful Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageWidget(),
    );
  }
}
