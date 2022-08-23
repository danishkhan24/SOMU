import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class HistoryInstructionPage extends StatelessWidget {
  const HistoryInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Browsing History",
      [
        "Open App Drawer",
        "Open \"Google Chrome\" App",
        "Open Menu",
        "Tap on \"History\"",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/chrome/step1.webp",
        "assets/chrome/step2.webp",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Chrome\" app as highlighted in the image",
        "Open the menu by clicking on top right of the app "
            "as shown in the image.",
        "Tap on History label to open the history page, where you "
            "can view and search in the history.",
      ],
    );
  }
}
