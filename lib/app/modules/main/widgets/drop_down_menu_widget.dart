import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routings/app_routers.dart';
import '../main_controller.dart';

class DropDownMenuWidget extends GetView<MainController> {
  const DropDownMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.tabIndex.value == 0) {
        return PopupMenuButton<String>(
          onSelected: (String selectedValue) {
            switch (selectedValue) {
              case 'Settings':
                Get.toNamed(AppRouters.setting);
                break;
            }
          },
          itemBuilder: (BuildContext context) {
            return controller.community.map((String cummunity) {
              return PopupMenuItem<String>(
                value: cummunity,
                child: Text(cummunity),
              );
            }).toList();
          },
          icon: const Icon(Icons.more_vert),
        );
      } else if (controller.tabIndex.value == 1) {
        return PopupMenuButton<String>(
          onSelected: (String selectedValue) {
            switch (selectedValue) {
              case 'New group':
                Get.to(Container());
                break;
              case 'New broadcast':
                Get.to(Container());
                break;
              case 'Linked devices':
                Get.to(Container());
                break;
              case 'Stared messages':
                Get.to(Container());
                break;
              case 'Settings':
                Get.toNamed(AppRouters.setting);
                break;
            }
          },
          itemBuilder: (BuildContext context) {
            return controller.chats.map((String chats) {
              return PopupMenuItem<String>(
                value: chats,
                child: Text(chats),
              );
            }).toList();
          },
          icon: const Icon(Icons.more_vert),
        );
      } else if (controller.tabIndex.value == 2) {
        return PopupMenuButton<String>(
          onSelected: (String newValue) {
            controller.changeValue(newValue);
          },
          itemBuilder: (BuildContext context) {
            return controller.status.map((String status) {
              return PopupMenuItem<String>(
                value: status,
                child: Text(status),
              );
            }).toList();
          },
          icon: const Icon(Icons.more_vert),
        );
      } else {
        return PopupMenuButton<String>(
          onSelected: (String newValue) {
            controller.changeValue(newValue);
          },
          itemBuilder: (BuildContext context) {
            return controller.calls.map((String calls) {
              return PopupMenuItem<String>(
                value: calls,
                child: Text(calls),
              );
            }).toList();
          },
          icon: const Icon(Icons.more_vert),
        );
      }
    });
  }
}
