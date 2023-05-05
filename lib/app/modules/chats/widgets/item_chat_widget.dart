import 'package:flutter/material.dart';

import '../../../utils/my_colors.dart';

class ItemChatWidget extends StatelessWidget {
  const ItemChatWidget({
    super.key,
    required this.isSender,
  });

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: MyColors.chatColor,
                borderRadius: isSender
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      )
                    : const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      )),
            child: const Text("ISI CHATS"),
          ),
          const SizedBox(height: 8),
          const Text(
            "00:00 AM",
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
