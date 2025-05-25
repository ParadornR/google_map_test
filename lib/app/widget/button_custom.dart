import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final IconData icon;
  final String text;
  final double size;
  const ButtonCustom({
    super.key,
    required this.icon,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 4),
          Text(text, style: TextStyle(fontSize: size)),
        ],
      ),
    );
  }
}
