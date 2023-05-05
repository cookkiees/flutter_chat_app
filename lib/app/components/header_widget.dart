import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.visible,
    required this.children,
    required this.title,
    required this.note,
  });

  final bool visible;
  final Widget children;
  final String title;
  final String note;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          children,
          Visibility(
            visible: visible,
            child: Stack(
              children: const [
                CircleAvatar(
                  radius: 28.0,
                  backgroundColor: MyColors.green,
                  backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/cookkiees/images/main/Person-icon.jpg",
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 11.0,
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: MyColors.green,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                note,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
