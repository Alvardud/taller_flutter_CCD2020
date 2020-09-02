import 'package:flutter/cupertino.dart';

class MarkerCanvas extends CustomPainter {
  final Radius radius = Radius.circular(8.0);

  @override
  void paint(Canvas canvas, Size size) {
    Paint marker = Paint()..color = Color.fromARGB(255, 94, 92, 230);

    //corners left-top
    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0.0, 0.0, 6, size.height / 5),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    canvas.drawRRect(
        RRect.fromRectAndCorners(Rect.fromLTWH(0.0, 0.0, size.height / 5, 6),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    //corners right top
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width - 6, 0.0, 6, size.height / 5),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(
                size.width - size.height / 5, 0.0, size.height / 5, 6),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    // corners left bottom
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(
                0.0, size.height - size.height / 5, 6, size.height / 5),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0.0, size.height - 6, size.height / 5, 6),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    //corners right bottom
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width - 6, size.height - size.height / 5, 6,
                size.height / 5),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);

    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width - size.height / 5, size.height - 6,
                size.height / 5, 6),
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: radius),
        marker);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
