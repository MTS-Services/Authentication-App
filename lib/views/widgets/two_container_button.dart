import 'package:flutter/material.dart';

class TwoContainerButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final Color containerColor;
  final Color textColor;
  const TwoContainerButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.containerColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
