import 'package:beauty_flutter/page/watch_page.dart';
import 'package:beauty_flutter/page/weather_page.dart';
import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'calculator_list_page.dart';
import 'diary_page.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: new Stack(
          children: <Widget>[
            TabBarView(
              children: [
                new WatchPageWidget(),
                new WeatherPageWidget(),
                new CalculatorPageWidget(),
                new DiaryPageWidget(),
              ],
            ),
            new Column(
              children: <Widget>[
                new Expanded(child: new Container()),
                new Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  color: Colors.white,
                  child: _buildBottomIndicatorWidget(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomIndicatorWidget() {
    return new TabBar(
      indicator: null,
      indicatorColor: Colors.white,
      labelColor: ColorUtils.THEME,
      unselectedLabelColor: ColorUtils.GREY_9E9,
      tabs: [
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.timer,
              size: 25,
            ),
            Text(
              "时钟",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.wb_cloudy,
              size: 25,
            ),
            Text(
              "天气",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.all_inclusive,
              size: 25,
            ),
            Text(
              "换算",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.bookmark,
              size: 25,
            ),
            Text(
              "日记",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
