import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalculatorDetailPageState();
}

class _CalculatorDetailPageState extends State<CalculatorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'cal_hero_top',
              child: _buildTopResultWidget(context),
            ),
          ),
          Hero(
            tag: 'cal_hero_bottom',
            child: new Container(
              height: 600,
              color: Colors.white,
              child: GridView.count(crossAxisCount: 4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopResultWidget(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: ColorUtils.MIDNIGHT_BLUE,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  bottom: 10,
                  top: 10,
                ),
                child: Image.asset(
                  'image/ic_upward.png',
                  height: 25,
                  width: 25,
                ),
              ),
            )),
      ],
    );
  }
}
