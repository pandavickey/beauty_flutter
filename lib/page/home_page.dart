import 'package:beauty_flutter/page/watch_page.dart';
import 'package:beauty_flutter/page/weather_page.dart';
import 'package:beauty_flutter/utils/ThemesUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'calculator_page.dart';
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
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: TabBarView(
                children: [
                  new WatchPageWidget(),
                  new WeatherPageWidget(),
                  new CalculatorPageWidget(),
                  new DiaryPageWidget(),
                ],
              ),
            ),
            new _BottomIndicatorWidget(),
          ],
        ),
      ),
    );
  }
}

class _BottomIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _BottomIndicatorState();
}

class _BottomIndicatorState extends State<_BottomIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return new TabBar(
      indicatorColor: ColorUtils.THEME,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: ColorUtils.THEME,
      unselectedLabelColor: ColorUtils.GREY_9E9,
      indicatorWeight: 3.0,
      tabs: [
        Tab(
          text: "时钟",
        ),
        Tab(
          text: "天气",
        ),
        Tab(
          text: "计算器",
        ),
        Tab(
          text: "笔记本",
        ),
      ],
    );
  }
}
