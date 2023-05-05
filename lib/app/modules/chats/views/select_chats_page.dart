import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/list_widget.dart';
import '../../../components/serach_widget.dart';
import '../../../routings/app_routers.dart';
import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';

class SelectChatsPage extends GetView<MainController> {
  const SelectChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title: Obx(() => controller.isSearch.value
            ? buildSearchField()
            : Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Select Contact",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "0 contacts",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              )),
        actions: [
          IconButton(
            onPressed: () {
              controller.isSearch.value = !controller.isSearch.value;
            },
            splashRadius: 1,
            icon: Icon(controller.isSearch.value ? Icons.close : Icons.search),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListWidget(
                    icon: Icons.group,
                    title: "New group",
                  ),
                  SizedBox(height: 16),
                  ListWidget(
                    icon: Icons.person_add,
                    title: "New contact",
                  ),
                  SizedBox(height: 16),
                  ListWidget(
                    icon: Icons.groups,
                    title: "New community",
                  ),
                  SizedBox(height: 16),
                  Text("Discover",
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  SizedBox(height: 16),
                  ListWidget(
                    icon: Icons.business_rounded,
                    title: "Businesses",
                  ),
                  SizedBox(height: 16),
                  Text("Contact on WhatsApp",
                      style: TextStyle(fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: contact.isEmpty
                  ? const Center(child: Text(""))
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: contact.length,
                      itemBuilder: (context, index) => contact[index]),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Widget> contact = List.generate(
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
    ),
  ),
).reversed.toList();
