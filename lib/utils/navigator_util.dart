import 'dart:io';

import 'package:flutter/widgets.dart';

class NavigatorUtils {
  void pop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
