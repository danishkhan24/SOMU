import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class CallsInstructionPage extends StatelessWidget {
  const CallsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Calls",
      [
        "Open App Drawer",
        "Open Phone App",
        "Check Recent Call Logs",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/calls/call_log.jpeg",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Phone\" app as highlighted in the image",
        "Here you should be able to see all the recent call logs",
      ],
    );
  }
}
