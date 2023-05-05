import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';

class AppBarWidget extends GetView<MainController> {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.green,
      flexibleSpace: const Padding(
        padding: EdgeInsets.only(left: 32),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListTile(
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/cookkiees/images/main/Person-icon.jpg",
              ),
            ),
            title: Text(
              "Name",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_call_sharp,
            size: 24.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.call,
            size: 20.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 20.0,
          ),
        ),
      ],
    );
  }
}
