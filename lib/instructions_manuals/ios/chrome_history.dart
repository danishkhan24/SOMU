import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class HistoryInstructionPage extends StatelessWidget {
  const HistoryInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Chrome History",
      [
        "Open \"Google Chrome\" App",
        "Open Menu",
        "Tap on \"History\"",
      ],
      [
        "assets/chrome/step_1_ios.jpg",
        "assets/chrome/step_2_ios.jpg",
        "assets/chrome/step_3_ios.jpg",
      ],
      [
        "Open the \"Chrome\" app as highlighted in the image",
        "Open the menu by clicking on bottom right of the app "
            "as shown in the image.",
        "Tap on \"History\" label to open the history page, where you "
            "can view and search in the history.",
      ],
    );
  }
}
