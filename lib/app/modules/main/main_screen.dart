import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config/size_config.dart';
import '../../utils/my_colors.dart';
import '../calls/calls_page.dart';
import '../chats/chats_page.dart';
import '../community/community_page.dart';
import '../status/status_page.dart';
import 'main_controller.dart';
import 'widgets/drop_down_menu_widget.dart';
import 'widgets/floating_action_button_widgets.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.green,
        toolbarHeight: 40,
        actions: [
          Obx(
            () {
              if (controller.tabIndex.value == 0) {
                return IconButton(
                  onPressed: () {},
                  splashRadius: 1,
                  icon: const Icon(Icons.photo_camera_outlined),
                );
              } else {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 1,
                      icon: const Icon(Icons.photo_camera_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 1,
                      icon: const Icon(Icons.search_outlined),
                    ),
                  ],
                );
              }
            },
          ),
          const DropDownMenuWidget()
        ],
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'WhatsApp',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: TabBar(
            onTap: (index) {
              controller.tabIndex.value = index;
            },
            controller: controller.tabController,
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: const [
              Tab(
                icon: Icon(Icons.groups),
              ),
              SizedBox(
                width: 93,
                child: Tab(
                  text: 'Chats',
                ),
              ),
              SizedBox(
                width: 93,
                child: Tab(
                  text: 'Status',
                ),
              ),
              SizedBox(
                width: 90,
                child: Tab(
                  text: 'Calls',
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: const [
          // content of Tab 1
          CommunityPage(),
          // content of Tab 2
          ChatsPage(),
          // content of Tab 3
          StatusPage(),
          // content of Tab 4
          CallsPage()
        ],
      ),
      floatingActionButton: const FloatingActionButtonWidget(),
    );
  }
}
