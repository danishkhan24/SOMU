import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class MessagesInstructionPage extends StatelessWidget {
  const MessagesInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      [
        "Open App Drawer",
        "Open Messages App",
        "Check Messages",
        "Check Archive Messages"
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/messages/messages_app.jpeg",
        "assets/messages/archive_messages.jpeg",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Messages\" app as highlighted in the image",
        "Here you should be able to see all the recent messages",
        "Click on the three dots on top right and then select \"archive messages\" "
            "option. After that you should be able to see the archived messages.",
      ],
    );
  }
}
