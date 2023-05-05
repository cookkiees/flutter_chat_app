import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:math' as math;
import '../../../utils/my_colors.dart';
import '../../main/main_controller.dart';

class LoginPage extends GetView<MainController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      controller.checkToken();
    });
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 300,
                    width: 300,
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 50,
                  child: Icon(
                    Icons.chat,
                    size: 150,
                    color: MyColors.green,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 250,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: const Icon(
                      Icons.chat,
                      size: 100,
                      color: MyColors.green,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Welcome to Chat App.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Get started.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                controller.handleSignIn();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.green,
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text("Sign in with Google"),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
