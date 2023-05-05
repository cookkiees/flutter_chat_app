import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: MyColors.green,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 16),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
