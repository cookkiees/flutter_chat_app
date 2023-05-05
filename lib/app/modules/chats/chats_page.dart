import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routings/app_routers.dart';
import '../../utils/my_colors.dart';
import '../main/main_controller.dart';

class ChatsPage extends GetView<MainController> {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: chats.length,
              itemBuilder: (context, index) => chats[index]),
        ),
      ),
    );
  }
}

final List<Widget> chats = List.generate(
  20,
  (index) => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: ListTile(
      onTap: () => Get.toNamed(AppRouters.chatsRoom),
      leading: const CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(
          "https://raw.githubusercontent.com/cookkiees/images/main/Person-icon.jpg",
        ),
      ),
      title: Text("Orang ke ${index + 1}"),
      trailing: const CircleAvatar(
        radius: 10,
        backgroundColor: MyColors.green,
        child: Text("0"),
      ),
    ),
  ),
).reversed.toList();
