import 'package:flutter/widgets.dart';

import 'base_page.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return new BasePageWidget(
      title: "home",
      content: new Container(),
      context: context,
    );
  }
}
