import 'package:flutter/material.dart';
import 'package:quizit/constants/global_variables.dart';

class BorderBox extends StatelessWidget {
  //const BorderBox({super.key});

  final Widget? child;
  final EdgeInsets? padding;
  final double? width, height;

  const BorderBox({
    Key? key,
    this.padding,
    this.height,
    this.width,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
