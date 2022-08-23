import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class WhatsappInstructionPage extends StatelessWidget {
  const WhatsappInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "WhatsApp",
      [
        "Open App Drawer",
        "Open \"Whatsapp\" App",
        "Check or Search Recent Chats",
        "Access Archived Chats",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/whatsapp/chat_screen.jpg",
        "assets/whatsapp/archived_chats.png",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Whatsapp\" app as highlighted in the image",
        "Now you can see all the recent chats. In addition to this "
            "you can also search for any specific word in all the chats "
            "using the search button in top right as marked in image above.",
        "If you see \"Archived Chats\" label on top of all recent chats, "
            "then click this label too see the archived chats."
      ],
    );
  }
}
