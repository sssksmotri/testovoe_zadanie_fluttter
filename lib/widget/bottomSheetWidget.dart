import 'package:flutter/material.dart';

import 'oval.dart';

class IncognitoOption extends StatelessWidget {
  final String icon;
  final String price;
  final String date;
  final bool isHighlighted;
  final String? discount;

  const IncognitoOption({
    Key? key,
    required this.icon,
    required this.price,
    required this.date,
    required this.isHighlighted,
    this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Основной контейнер
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xFF212020),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    icon,
                    width: 36,
                    height: 36,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),

        if (discount != null)
          Positioned(
            top: -25,
            left: 0,
            right: 0,
            child: HighlightOval(
              text: discount!,
              isHighlighted: isHighlighted,
            ),
          ),
      ],
    );
  }
}