import 'package:beauty_flutter/utils/ThemesUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WeatherPageWidgetState();
}

class _WeatherPageWidgetState extends State<WeatherPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: new Center(child: new Text('天气'),),
    );
  }
}
