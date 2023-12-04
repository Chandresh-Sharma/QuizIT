import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // style: ButtonStyle(
      //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //       RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(15.0),
      //           side: BorderSide(color: Colors.red))),
      // ),
      // style: ButtonStyle(
      //   MaterialStateProperty<OutlinedBorder?>? shape,
      // ),
      child: Text(
        text,
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50)),
    );
  }
}
