import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  final String text;

  const MyButton({super.key, this.color, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final Color bgColor = color ?? Theme.of(context).colorScheme.secondary;
    final Color textColor = Theme.of(context).colorScheme.onSecondary;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Text(
            text.tr(),
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
