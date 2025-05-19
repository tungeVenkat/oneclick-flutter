import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final String linkedin = "https://www.linkedin.com/in/venkat-lv/";
  final String instagram =
      "https://www.instagram.com/venky_codez?igsh=MXcyMG56ZGR5bmVmaA==";

  void sendMessage(BuildContext context) async {
    String phone = phoneController.text.trim();
    String message = Uri.encodeComponent(messageController.text.trim());

    if (phone.isNotEmpty) {
      String url = "https://wa.me/$phone?text=$message";
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Could not open WhatsApp")),
        );
      }
    }
  }

  void SendlinkedIn() async {
    await launchUrl(Uri.parse(linkedin));
  }

  void SendInstagram() async {
    await launchUrl(Uri.parse(instagram));
  }

  
}
