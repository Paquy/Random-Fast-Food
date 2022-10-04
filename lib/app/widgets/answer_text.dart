import 'package:flutter/material.dart';

class AnswerText extends StatelessWidget {
  const AnswerText({super.key, required this.restaurant});

  final String restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          restaurant,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
