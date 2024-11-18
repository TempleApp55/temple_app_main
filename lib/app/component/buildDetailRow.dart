 import 'package:flutter/material.dart';

Widget buildDetailRow({
    IconData? icon,
    Widget? iconWidget,
    required String text,
    Color? iconColor,
    TextStyle? textStyle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null)
          Icon(icon, size: 18, color: iconColor ?? Colors.black)
        else if (iconWidget != null)
          iconWidget,
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: textStyle ??
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

