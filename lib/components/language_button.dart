import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final Color? color;
  final String text;

  const LanguageButton({super.key, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    final Color bgColor = color ?? Theme.of(context).colorScheme.secondary;
    final Color textColor = Theme.of(context).colorScheme.onSecondary;

    return GestureDetector(
      onTap: () {
        final newLocale =
            context.locale.languageCode == 'en'
                ? const Locale('mn')
                : const Locale('en');
        context.setLocale(newLocale);
      },
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
