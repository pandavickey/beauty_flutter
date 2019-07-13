import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CalculatorPageWidgetState();
}

class _CalculatorPageWidgetState extends State<CalculatorPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: ColorUtils.BACKGROUND,
      body: new Container(
        margin: EdgeInsets.only(
          top: 100,
          bottom: 60,
        ),
        child: GridView.count(
          shrinkWrap: true,
          padding: EdgeInsets.all(0),
          crossAxisCount: 3,
          childAspectRatio: 0.8,
          children: _generateCalculatorWidgets(),
        ),
      ),
    );
  }

  List _generateCalculatorWidgets() {
    List<_widgetItem> items = <_widgetItem>[];
    items.add(new _widgetItem('长度换算', 'image/ic_ruler.png'));
    items.add(new _widgetItem('面积换算', 'image/ic_area.png'));
    items.add(new _widgetItem('体积换算', 'image/ic_three_dimensions.png'));
    items.add(new _widgetItem('时间换算', 'image/ic_time.png'));
    items.add(new _widgetItem('温度换算', 'image/ic_temperature.png'));
    items.add(new _widgetItem('速度换算', 'image/ic_speed.png'));
    items.add(new _widgetItem('角度换算', 'image/ic_angle.png'));
    items.add(new _widgetItem('重量换算', 'image/ic_weight.png'));
    items.add(new _widgetItem('力量换算', 'image/ic_dynamometer.png'));
    items.add(new _widgetItem('压力换算', 'image/ic_pressure.png'));
    items.add(new _widgetItem('大写数字', 'image/ic_chinese_number.png'));
    items.add(new _widgetItem('字节换算', 'image/ic_byte.png'));
    items.add(new _widgetItem('密度换算', 'image/ic_density.png'));
    items.add(new _widgetItem('功率换算', 'image/ic_power.png'));
    items.add(new _widgetItem('热量换算', 'image/ic_heat.png'));

    List children = <Widget>[];
    for (int i = 0; i < items.length; i++) {
      children.add(
        new Column(
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
      );
    }
    return children;
  }
}

class _widgetItem {
  String title;
  String icon;

  _widgetItem(this.title, this.icon);
}
