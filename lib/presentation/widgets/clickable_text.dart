import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ClickableText({required this.text, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}