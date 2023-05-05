import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/list_widget.dart';
import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';

class SelectCallsPage extends GetView<MainController> {
  const SelectCallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Select Contact",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "0 contacts",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 1,
            icon: const Icon(Icons.search_outlined),
          ),
          PopupMenuButton<String>(
            onSelected: (String newValue) {
              controller.changeValue(newValue);
            },
            itemBuilder: (BuildContext context) {
              return controller.selectContact.map((String selectContact) {
                return PopupMenuItem<String>(
                  value: selectContact,
                  child: Text(selectContact),
                );
              }).toList();
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ListWidget(
                icon: Icons.link,
                title: "New call link",
              ),
              SizedBox(height: 16),
              ListWidget(
                icon: Icons.group,
                title: "New group call",
              ),
              SizedBox(height: 16),
              ListWidget(
                icon: Icons.person_add,
                title: "New contact",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
