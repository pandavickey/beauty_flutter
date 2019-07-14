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
      backgroundColor: const Color(0xFF87CEEB),
      body: new Container(
          margin: EdgeInsets.only(bottom: 60),
          child: new SingleChildScrollView(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  height: 120,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      width: 60,
                    ),
                    new Text(
                      '25',
                      style: new TextStyle(
                        fontSize: 90,
                        color: Colors.white,
                      ),
                    ),
                    new Container(
                      width: 60,
                      margin: EdgeInsets.only(top: 15),
                      child: new Text(
                        '°C',
                        style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                new Container(
                  margin: EdgeInsets.only(top: 1),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        '28°C',
                        style: new TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      new Text(
                        ' / 21°C',
                        style: new TextStyle(
                          fontSize: 16,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10),
                  child: new Text(
                    '晴 空气良',
                    style: new TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 30),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        width: 30,
                      ),
                      new Text(
                        '上海',
                        style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      new Image.asset(
                        'image/ic_location.png',
                        width: 30,
                        height: 25,
                      ),
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    top: 5,
                  ),
                  child: new Text(
                    '上次更新时间：晚上9:36',
                    style: new TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                  ),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Text(
                          '中国天气通',
                          style: new TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      new Text(
                        '43 分钟前发布',
                        style: new TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 0.5,
                  color: Colors.white54,
                  margin: EdgeInsets.only(
                    top: 5,
                    left: 20,
                    right: 20,
                  ),
                ),
                _generateWeatherHourList(),
                new Container(
                  height: 0.5,
                  color: Colors.white54,
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
                _generateWeatherDateList(),
                new Container(height: 30),
              ],
            ),
          )),
    );
  }

  Widget _generateWeatherHourList() {
    List children = <Widget>[];
    for (int i = 0; i < 24; i++) {
      children.add(
        new Container(
          margin: EdgeInsets.only(
            right: 30,
          ),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                '上午8:00',
                style: new TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
              ),
              new Container(
                height: 20,
              ),
              new Image.asset(
                'image/ic_sunshine.png',
                width: 30,
                height: 30,
              ),
              new Container(
                height: 10,
              ),
              new Text(
                '24°C',
                style: new TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return new Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: new Row(
          children: children,
        ),
      ),
    );
  }

  Widget _generateWeatherDateList() {
    List children = <Widget>[];
    for (int i = 0; i < 6; i++) {
      children.add(new Column(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  '7月1' + i.toString() + '日',
                  style: new TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                new Expanded(
                    child: new Image.asset(
                  'image/ic_sunshine.png',
                  width: 30,
                  height: 20,
                )),
                new Text(
                  '28°C',
                  style: new TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                new Text(
                  ' / 21°C',
                  style: new TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            color: Colors.white54,
            height: 0.5,
          )
        ],
      ));
    }
    return new Column(
      children: children,
    );
  }
}
