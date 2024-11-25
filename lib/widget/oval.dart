import 'package:flutter/material.dart';

class HighlightOval extends StatelessWidget {
  final String text;
  final bool isHighlighted;

  const HighlightOval({
    super.key,
    required this.text,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: isHighlighted
                    ? Colors.red.withOpacity(0.2)
                    : Colors.grey.withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: 4,
              ),
            ],
          ),
        ),
        Container(
          width: 60,
          height: 20,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isHighlighted
                  ? [Colors.red, Colors.orange, Colors.yellow,   Colors.red, ]
                  : [Colors.grey, Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}