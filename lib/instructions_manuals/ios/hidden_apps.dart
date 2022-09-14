import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class HiddenAppsInstructionPage extends StatelessWidget {
  const HiddenAppsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Hidden Apps",
      [
        "Open App Store and Click on Account Button",
        "Tap the Account Bar",
        "Hidden Purchases",
      ],
      [
        "assets/hidden_apps/step_1_ios.jpg",
        "assets/hidden_apps/step_2_ios.png",
        "assets/hidden_apps/step_3_ios.png",
      ],
      [
        "Open the App Store and click on the account button, on the top "
            "right.",
        "Tap on the Account Bar to open the details. This may require password, "
            "enter the one you collected from the device owner.",
        "Tap onto the \"Hidden Purchases\" to view all the hidden purchases.",
      ],
    );
  }
}
