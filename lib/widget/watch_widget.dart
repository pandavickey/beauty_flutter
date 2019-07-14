import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WatchWidgetState();
}

class _WatchWidgetState extends State<WatchWidget> {
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
    return new CustomPaint(
      painter: new _WatchPainter(_time),
    );
  }
}

class _WatchPainter extends CustomPainter {
  DateTime _time;

  _WatchPainter(this._time);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    double width = size.width / 2;
    double height = size.height / 2;
    double radius = width - 50;
    var center = Offset(width, height);
    canvas.drawCircle(center, radius, paint);

    int second = _time.second;
    int minute = _time.minute;
    int hour = _time.hour > 12 ? _time.hour - 12 : _time.hour;
    final double alpha = math.pi / 180;
    num sRadian = second * 6 * alpha;
    num mRadian = (second / 60 + minute) * 6 * alpha;
    num hRadian = ((second / 60 + minute) / 60 + hour) * 30 * alpha;

    _paintScale(canvas, paint, center, radius);

    _paintHour(canvas, paint, center, radius, hRadian);
    _paintMinute(canvas, paint, center, radius, mRadian);
    _paintSecond(canvas, paint, center, radius, sRadian);
  }

  void _paintSecond(
      Canvas canvas, Paint paint, Offset center, double radius, num sRadian) {
    paint.strokeWidth = 2;
    paint.color = Colors.blue;
    canvas.drawLine(
        Offset(center.dx - math.sin(sRadian) * radius * 0.08,
            center.dy + math.cos(sRadian) * radius * 0.08),
        Offset(center.dx + math.sin(sRadian) * radius * 0.95,
            center.dy - math.cos(sRadian) * radius * 0.95),
        paint);

    paint.color = Colors.blue;
    canvas.drawCircle(center, 5, paint);

    paint.color = Colors.white;
    canvas.drawCircle(center, 3, paint);
  }

  void _paintMinute(
      Canvas canvas, Paint paint, Offset center, double radius, num mRadian) {
    paint.strokeWidth = 6;
    paint.color = Colors.white;
    canvas.drawLine(
        center,
        Offset(center.dx + math.sin(mRadian) * radius * 0.75,
            center.dy - math.cos(mRadian) * radius * 0.75),
        paint);
    canvas.drawCircle(
        Offset(center.dx + math.sin(mRadian) * radius * 0.75,
            center.dy - math.cos(mRadian) * radius * 0.75),
        3,
        paint);

    paint.strokeWidth = 1;
    paint.color = Colors.black;
    canvas.drawLine(
        Offset(center.dx + math.sin(mRadian) * radius * 0.6,
            center.dy - math.cos(mRadian) * radius * 0.6),
        Offset(center.dx + math.sin(mRadian) * radius * 0.74,
            center.dy - math.cos(mRadian) * radius * 0.74),
        paint);
  }

  void _paintHour(
      Canvas canvas, Paint paint, Offset center, double radius, num hRadian) {
    paint.strokeWidth = 6;
    paint.color = Colors.white;
    canvas.drawLine(
        center,
        Offset(center.dx + math.sin(hRadian) * radius * 0.55,
            center.dy - math.cos(hRadian) * radius * 0.55),
        paint);
    canvas.drawCircle(
        Offset(center.dx + math.sin(hRadian) * radius * 0.55,
            center.dy - math.cos(hRadian) * radius * 0.55),
        3,
        paint);

    paint.strokeWidth = 1;
    paint.color = Colors.black;
    canvas.drawLine(
        Offset(center.dx + math.sin(hRadian) * radius * 0.4,
            center.dy - math.cos(hRadian) * radius * 0.4),
        Offset(center.dx + math.sin(hRadian) * radius * 0.54,
            center.dy - math.cos(hRadian) * radius * 0.54),
        paint);
  }

  void _paintScale(Canvas canvas, Paint paint, Offset center, double radius) {
    paint.strokeWidth = 2;
    for (int i = 0; i < 60; i++) {
      if (i % 5 == 0) {
        paint.color = Colors.white;
        int hour = (i / 5).round();
        num radian = hour * 30 * math.pi / 180;
        canvas.drawLine(
            Offset(center.dx + math.sin(radian) * radius * 0.95,
                center.dy - math.cos(radian) * radius * 0.95),
            Offset(center.dx + math.sin(radian) * radius * 0.85,
                center.dy - math.cos(radian) * radius * 0.85),
            paint);

        TextSpan span = new TextSpan(
            style: new TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
            text: (hour == 0 ? 12 : hour).toString());
        TextPainter tp =
            new TextPainter(text: span, textDirection: TextDirection.ltr);
        tp.layout();

        tp.paint(
            canvas,
            new Offset(
                center.dx + math.sin(radian) * radius * 0.75 - tp.width / 2,
                center.dy - math.cos(radian) * radius * 0.75 - tp.height / 2));
      } else {
        paint.color = Colors.grey;
        num radian = i * 6 * math.pi / 180;
        canvas.drawLine(
            Offset(center.dx + math.sin(radian) * radius * 0.95,
                center.dy - math.cos(radian) * radius * 0.95),
            Offset(center.dx + math.sin(radian) * radius * 0.9,
                center.dy - math.cos(radian) * radius * 0.9),
            paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
