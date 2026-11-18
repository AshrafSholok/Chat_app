import 'package:chat_app/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? borderRadius;
  final IconData? icon;
  final double? padding;
  final double? fontSize;
  final double? width;
  final double? height;

  const DefaultButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 24.0,
    this.icon,
    this.padding = 16.0,
    this.fontSize = 20.0,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorsApp.primaryColor,
        textStyle: TextStyle(
            color: textColor ?? Colors.white, fontSize: fontSize), // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        padding: EdgeInsets.all(padding!),
        minimumSize: Size(width ?? 0, height ?? 0),
      ),
      onPressed: onPressed,
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: fontSize != null ? fontSize! + 4 : null,
                ),
                const SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(fontSize: fontSize, color: Colors.white),
                ),
              ],
            )
          : Text(
              label,
              style: TextStyle(fontSize: fontSize, color: Colors.white),
            ),
    );
  }
}
