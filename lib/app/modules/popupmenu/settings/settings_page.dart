import 'package:flutter/material.dart';
import 'package:flutter_chat_app/app/routings/app_routers.dart';
import 'package:get/get.dart';
import '../../../components/header_widget.dart';
import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';

class SettingPage extends GetView<MainController> {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text("Settings"),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              HeaderWidget(
                visible: false,
                title: controller.user == null
                    ? "my name"
                    : controller.user!.displayName!,
                note: "Ada",
                children: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: MyColors.green,
                  backgroundImage: controller.user == null
                      ? const NetworkImage(
                          "https://raw.githubusercontent.com/cookkiees/images/main/Person-icon.jpg",
                        )
                      : NetworkImage(controller.user!.photoUrl!),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () => Get.toNamed(AppRouters.account),
                leading: const Icon(Icons.person),
                title: const Text("Account"),
                subtitle: const Text("Security notifications, change number"),
              ),
              const ListTile(
                leading: Icon(Icons.lock),
                title: Text("Privacy"),
                subtitle: Text("Block contact, disappearing message"),
              ),
              const ListTile(
                leading: SizedBox(),
                title: Text("Avatar"),
                subtitle: Text("Create, edit, profile photo"),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text("Chats"),
                subtitle: Text("Theme, wallpapers, chat history"),
              ),
              const ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                subtitle: Text("Message, group & call tones"),
              ),
              const ListTile(
                leading: Icon(Icons.circle_outlined),
                title: Text("Storage and data"),
                subtitle: Text("Network usage, auto-download"),
              ),
              const ListTile(
                leading: Icon(Icons.language),
                title: Text("App language"),
                subtitle: Text("English"),
              ),
              const ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help"),
                subtitle: Text("Help center, contact us, privasy policy"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Invited friends"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
