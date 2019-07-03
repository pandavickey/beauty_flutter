import 'package:beauty_flutter/utils/ThemesUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CalculatorPageWidgetState();
}

class _CalculatorPageWidgetState extends State<CalculatorPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: new Center(child: new Text('计算器'),),
    );
  }
}
