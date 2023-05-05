import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/endtoend_widget.dart';
import '../../components/header_widget.dart';
import '../../utils/my_colors.dart';
import '../main/main_controller.dart';

class CallsPage extends GetView<MainController> {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              children: const [
                HeaderWidget(
                  visible: false,
                  title: "Create call link",
                  note: "Share a link for your WhatsApp call",
                  children: CircleAvatar(
                      radius: 28.0,
                      backgroundColor: MyColors.green,
                      child: Icon(
                        Icons.link_outlined,
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 8),
                Divider(thickness: 0.5),
                SizedBox(height: 8),
                EndtoEndWidget(),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.all(24),
              alignment: Alignment.center,
              child: const Text(
                "To Start calling contacts who have WhatsApp, tab at the bottom of your screen",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
