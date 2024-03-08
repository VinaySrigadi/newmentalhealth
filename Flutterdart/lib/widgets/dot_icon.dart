import 'package:flutter/material.dart';

class DotIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Color color;
  final Color dotColor;

  const DotIcon({super.key, 
    required this.icon,
    required this.isSelected,
    required this.color,
    this.dotColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          icon,
          color: color,
        ),
        if (isSelected)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: dotColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}