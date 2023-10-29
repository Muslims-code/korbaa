import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const ButtonIcon({
    required this.backgroundColor,
    required this.onPressed,
    required this.textColor,
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: textColor,
          size: 18,
        ),
        label: Text(
          text,
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: textColor,
            height: 23 / 15,
          ),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: const Color(0xff0A4D68))),
            backgroundColor: backgroundColor,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 10.0, vertical: 15)),
      ),
    );
  }
}
