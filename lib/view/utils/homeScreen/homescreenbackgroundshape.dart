import 'dart:math' as math;

import 'package:maze/theme/coreimport.dart';


class HomeScreenBackgroundShape extends StatelessWidget {
  final double diameter;
  final Color color;
  final bool isSecond;
  const HomeScreenBackgroundShape({super.key, this.diameter = 210, required this.color, this.isSecond = false});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: isSecond ? 3 : 1,
      child: CustomPaint(
        painter: ArcPainter(color: color),
        size: Size(diameter, diameter),
      ),
    );
  }
}


// This is the Painter class
class ArcPainter extends CustomPainter {
  final Color color;
  ArcPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 1.6, size.width),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}