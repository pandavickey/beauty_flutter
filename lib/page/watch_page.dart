import 'package:beauty_flutter/utils/ThemesUtils.dart';
import 'package:beauty_flutter/widget/watch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WatchPageState();
}

class _WatchPageState extends State<WatchPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: new Container(
        width: double.infinity,
        height: 500,
        child: new WatchWidget(),
      ),
    );
  }
}
