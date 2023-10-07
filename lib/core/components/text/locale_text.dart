import 'package:flutter/material.dart';
import 'package:plan_weekly/core/extension/string_extension.dart';

class LocaleText extends StatelessWidget {
  const LocaleText({
    super.key,
    required this.value,
  });

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(value.locale);
  }
}
