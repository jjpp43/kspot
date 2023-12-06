import '../shared/app_colors.dart';
import '../shared/styles.dart';
import 'package:flutter/material.dart';

class TagButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const TagButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  const TagButton.outline({
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
              color: PrimaryContainer, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
            child: Text(
              title,
              style: buttonTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
