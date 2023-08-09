import 'package:flutter/material.dart';
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.action = 'View More',

  });
  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
        ),
        Text(action
        ),

      ],
    );
  }
}