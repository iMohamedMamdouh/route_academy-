import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    this.borderColor = Colors.blue,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    required this.onPressed,
    required this.buttonText,
    super.key,
  });

  final String buttonText;
  final Function()? onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor, width: 1),
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        overlayColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: Text(buttonText, style: TextStyle(fontSize: 16))),
      ),
    );
  }
}
