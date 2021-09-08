import 'package:flutter/material.dart';

class CustomDashboardDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8689440, size.height * 0.7214268);
    path_0.cubicTo(
        size.width * 1.132397,
        size.height * 0.6886008,
        size.width * 1.038267,
        size.height * 0.4608323,
        size.width * 1.031603,
        size.height * 0.3359321);
    path_0.lineTo(size.width * 1.031603, size.height * -0.006369427);
    path_0.lineTo(size.width * -0.02701040, size.height * -0.006369427);
    path_0.lineTo(size.width * -0.2243333, size.height * 0.2171529);
    path_0.cubicTo(
        size.width * -0.2349995,
        size.height * 0.2851805,
        size.width * -0.2243336,
        size.height * 0.5205817,
        size.width * 0.1489803,
        size.height * 0.5205817);
    path_0.cubicTo(
        size.width * 0.4938720,
        size.height * 0.5205817,
        size.width * 0.5396267,
        size.height * 0.7624607,
        size.width * 0.8689440,
        size.height * 0.7214268);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff9B51E0).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
