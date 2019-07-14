import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'calculator_detail_page.dart';

class CalculatorPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CalculatorPageWidgetState();
}

class _CalculatorPageWidgetState extends State<CalculatorPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: new Column(
        children: <Widget>[
          Hero(
            tag: 'cal_hero_top',
            child: Container(),
          ),
          Container(
            height: 60,
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              children: _generateCalculatorWidgets(),
            ),
          ),
          Hero(
            tag: 'cal_hero_bottom',
            child: Container(),
          ),
        ],
      ),
    );
  }

  List _generateCalculatorWidgets() {
    List<_WidgetItem> items = <_WidgetItem>[];
    items.add(new _WidgetItem('长度换算', 'image/ic_ruler.png'));
    items.add(new _WidgetItem('面积换算', 'image/ic_area.png'));
    items.add(new _WidgetItem('体积换算', 'image/ic_three_dimensions.png'));
    items.add(new _WidgetItem('时间换算', 'image/ic_time.png'));
    items.add(new _WidgetItem('温度换算', 'image/ic_temperature.png'));
    items.add(new _WidgetItem('速度换算', 'image/ic_speed.png'));
    items.add(new _WidgetItem('角度换算', 'image/ic_angle.png'));
    items.add(new _WidgetItem('重量换算', 'image/ic_weight.png'));
    items.add(new _WidgetItem('力量换算', 'image/ic_dynamometer.png'));
    items.add(new _WidgetItem('压力换算', 'image/ic_pressure.png'));
    items.add(new _WidgetItem('大写数字', 'image/ic_chinese_number.png'));
    items.add(new _WidgetItem('字节换算', 'image/ic_byte.png'));
    items.add(new _WidgetItem('密度换算', 'image/ic_density.png'));
    items.add(new _WidgetItem('功率换算', 'image/ic_power.png'));
    items.add(new _WidgetItem('热量换算', 'image/ic_heat.png'));

    List children = <Widget>[];
    for (int i = 0; i < items.length; i++) {
      children.add(GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 800),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    CalculatorDetailPage(),
              ));
        },
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              items[i].icon,
              width: 50,
              height: 50,
            ),
            new Container(
              height: 20,
            ),
            new Text(
              items[i].title,
              style: new TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ));
    }
    return children;
  }
}

class _WidgetItem {
  String title;
  String icon;

  _WidgetItem(this.title, this.icon);
}
