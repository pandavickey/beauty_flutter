import 'dart:async';

import 'package:beauty_flutter/bean/world_time.dart';
import 'package:beauty_flutter/utils/date_util.dart';
import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:beauty_flutter/widget/watch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPageWidget> {
  DateTime _time = DateTime.now();
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        _time = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[];
    children.addAll(<Widget>[
      Container(
        margin: EdgeInsets.only(top: 60),
        width: double.infinity,
        height: 400,
        child: WatchWidget(),
      ),
      Text(
        '中国标准时间',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black87,
        ),
      ),
      Text(
        _getDateFormat(),
        style: TextStyle(
          fontSize: 14,
          color: Colors.black38,
        ),
      ),
    ]);
    children.addAll(_buildWorldTimeWidgets());
    children.add(new Container(height: 100));
    return Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  String _getDateFormat() {
    return DateUtil.getDateStrByDateTime(_time,
            format: DateFormat.ZH_MONTH_DAY) +
        DateUtil.getZHWeekDay(_time);
  }

  List<Widget> _buildWorldTimeWidgets() {
    List<Widget> children = <Widget>[];
    List<WorldTime> times = WorldTimeUtil.getWorldTimes();
    for (int i = 0; i < times.length; i++) {
      WorldTime time = times[i];
      int hour = time.interval ~/ 3600;
      children.add(Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        time.cityName,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        time.interval > 0
                            ? '早' + hour.toString() + '小时'
                            : '晚' + (-hour).toString() + '小时',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  DateUtil.getDateStrByDateTime(
                    DateTime.fromMillisecondsSinceEpoch(
                        _time.millisecondsSinceEpoch + time.interval * 1000),
                    format: DateFormat.HOUR_MINUTE,
                  ),
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: 0.5,
            color: ColorUtils.GREY_LINE,
          )
        ],
      ));
    }
    return children;
  }
}
