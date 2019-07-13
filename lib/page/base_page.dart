import 'package:beauty_flutter/utils/navigator_util.dart';
import 'package:beauty_flutter/utils/themes_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasePageWidget extends WillPopScope {
  final String title;
  final Widget content, titleWidget;
  final BuildContext context;
  final List<Widget> actions;

  BasePageWidget({
    Key key,
    this.title,
    this.content,
    this.context,
    this.titleWidget,
    this.actions,
  }) : super(
          onWillPop: () {
            new NavigatorUtils().pop(context);
          },
          child: new Scaffold(
            appBar: _AppBar(
              title: title,
              titleWidget: titleWidget,
              actions: actions,
            ),
            backgroundColor: ColorUtils.BACKGROUND,
            body: content,
          ),
        );
}

const double kToolbarHeight = 56.0;

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget titleWidget;
  final List<Widget> actions;

  const _AppBar({
    Key key,
    this.title,
    this.titleWidget,
    this.actions,
  }) : super(key: key);

  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blue,
      child: new AppBar(
        title: titleWidget ??
            new Text(
              title,
              style: new TextStyle(
                  fontSize: 17.0,
                  color: ColorUtils.WHITE,
                  fontWeight: FontWeight.w700),
            ),
        centerTitle: true,
        actions: actions,
        backgroundColor: ColorUtils.TRANSPARENT,
        elevation: 0.0,
        leading: new Container(
          margin: EdgeInsets.all(5.0),
          child: new InkWell(
            highlightColor: const Color(0xFF27518F),
            borderRadius: BorderRadius.circular(64.0),
            onTap: () {
              new NavigatorUtils().pop(context);
            },
            child: new Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
