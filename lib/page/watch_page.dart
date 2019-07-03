import 'package:beauty_flutter/widget/watch_widget.dart';
import 'package:flutter/widgets.dart';

import 'base_page.dart';

class WatchPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WatchPageState();
}

class _WatchPageState extends State<WatchPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new BasePageWidget(
      title: '时钟',
      content: new Container(width: double.infinity, height: 500, child: new WatchWidget(),),
      context: context,
    );
  }
}
