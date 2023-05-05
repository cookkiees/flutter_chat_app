import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/my_colors.dart';
import '../main/main_controller.dart';

class CommunityPage extends GetView<MainController> {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Intoducing communities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                "Easily organize your related groups and send announcements. Now, your ccommunities, like neighborhoods or schools, can have their own space.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                minimumSize: const Size(double.infinity, 40),
              ),
              child: const Text("Start your community"),
            )
          ],
        ),
      ),
    );
  }
}
