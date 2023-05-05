import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routings/app_routers.dart';
import '../../../utils/my_colors.dart';
import '../main_controller.dart';

class FloatingActionButtonWidget extends GetView<MainController> {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.tabIndex.value == 0) {
          return const SizedBox.shrink();
        } else if (controller.tabIndex.value == 1) {
          return FloatingActionButton(
            onPressed: () => Get.toNamed(AppRouters.selectChats),
            backgroundColor: MyColors.green,
            child: const Icon(Icons.message),
          );
        } else if (controller.tabIndex.value == 2) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                mini: true,
                onPressed: () {},
                backgroundColor: Colors.grey.shade300,
                splashColor: Colors.transparent,
                child: const Icon(
                  Icons.edit,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 16),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: MyColors.green,
                splashColor: Colors.transparent,
                child: const Icon(Icons.photo_camera),
              ),
            ],
          );
        } else {
          return FloatingActionButton(
            onPressed: () => Get.toNamed(AppRouters.selectCalls),
            backgroundColor: MyColors.green,
            child: const Icon(Icons.add_call),
          );
        }
      },
    );
  }
}
