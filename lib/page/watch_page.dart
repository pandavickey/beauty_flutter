import 'package:beauty_flutter/utils/date_util.dart';
import 'package:beauty_flutter/utils/themes_util.dart';
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
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(top: 60),
            width: double.infinity,
            height: 400,
            child: new WatchWidget(),
          ),
          new Text(
            '中国标准时间',
            style: new TextStyle(
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          new Text(
            _getDateFormat(),
            style: new TextStyle(
              fontSize: 14,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }

  String _getDateFormat() {
    return DateUtil.getDateStrByDateTime(DateTime.now(),
            format: DateFormat.ZH_MONTH_DAY) +
        DateUtil.getZHWeekDay(DateTime.now());
  }
}
