import 'package:flutter/material.dart';
import 'package:quizit/constants/global_variables.dart';

class CustomDesginButton extends StatefulWidget {
  static const String routeName = '/custom-designed-button';
  const CustomDesginButton({super.key});

  @override
  State<CustomDesginButton> createState() => _CustomDesginButtonState();
}

class _CustomDesginButtonState extends State<CustomDesginButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => print('Do Something'),
          child: CustomPaint(
            size: Size(200, 50),
            painter: CurvePainter(),
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = GlobalVariables.originalSecondaryColor
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(size.width * 0.2, 0)
      ..lineTo(size.width, size.height * 0.2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
