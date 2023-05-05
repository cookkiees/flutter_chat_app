import 'package:flutter/material.dart';
import 'package:flutter_chat_app/app/modules/main/main_controller.dart';
import 'package:flutter_chat_app/app/utils/my_colors.dart';
import 'package:get/get.dart';

class AccountPage extends GetView<MainController> {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: const Text("Account"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Change account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  controller.handleSignOut();
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
