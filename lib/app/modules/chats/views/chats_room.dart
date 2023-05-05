import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/item_chat_widget.dart';

class ChatsRoomPage extends GetView<MainController> {
  const ChatsRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60), child: AppBarWidget()),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: const [
                  ItemChatWidget(isSender: true),
                  ItemChatWidget(isSender: false)
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.white,
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.28,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions,
                          size: 24.0,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          size: 20.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const CircleAvatar(
                  radius: 28.0,
                  backgroundColor: MyColors.green,
                  child: Icon(Icons.mic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
