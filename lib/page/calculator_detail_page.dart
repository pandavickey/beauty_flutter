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
        Container(
          margin: EdgeInsets.only(
            top: 60,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '当前换算单位',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white54,
                ),
              ),
              Text(
                '小时(h)',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 5,
              ),
              Image.asset(
                'image/ic_setting.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(
              top: 60,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '目标换算单位',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                  ),
                ),
                Text(
                  '分钟(min)',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 5,
                ),
                Image.asset(
                  'image/ic_setting.png',
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(
              top: 50,
              bottom: 50,
            ),
            width: 1,
            height: double.infinity,
            color: Colors.white30,
          ),
        ),
      ],
    );
  }
}
