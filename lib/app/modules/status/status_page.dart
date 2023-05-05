import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/endtoend_widget.dart';
import '../main/main_controller.dart';
import '../../components/header_widget.dart';

class StatusPage extends GetView<MainController> {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            HeaderWidget(
              visible: true,
              title: "My Status",
              note: "Tap to add status update",
              children: SizedBox.shrink(),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Divider(
                thickness: 0.5,
              ),
            ),
            SizedBox(height: 8),
            EndtoEndWidget(),
          ],
        ),
      ),
    );
  }
}
