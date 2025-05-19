import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneclick/Screens/home_controller.dart';
import 'package:oneclick/widgets/textfield.dart';

class OneClickHome extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'OneClick',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () => controller.SendlinkedIn(),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Image.asset('assets/insta.webp'),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () => controller.SendInstagram(),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Image.asset('assets/linked.png'),
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            onPressed: () => Get.defaultDialog(
                title: 'App Info',
                titleStyle:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                middleText:
                    'OneClick: Send WhatsApp messages without saving numbers. Just type, send, done!'),
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 28,
            ),
          ),
          SizedBox(width: 8)
        ],
      ),
      body: Center(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textfield(
                  controller: controller.phoneController,
                  keyboardtype: TextInputType.number,
                  label: 'Mobile',
                  icon: Icon(Icons.call),
                ),
                Textfield(
                  controller: controller.messageController,
                  keyboardtype: TextInputType.text,
                  label: 'Message',
                  icon: Icon(Icons.chat),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => controller.sendMessage(context),
                  child: Text(
                    'SEND',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
