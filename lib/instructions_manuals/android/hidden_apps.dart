import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class HiddenAppsInstructionPage extends StatelessWidget {
  const HiddenAppsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Hidden Apps",
      [
        "Open Settings -> Apps",
        "Tap the \"App List\"",
        "Search / View all Apps",
      ],
      [
        "assets/hidden_apps/step_1_android.jpg",
        "assets/hidden_apps/step_2_android.jpg",
        "assets/hidden_apps/step_3_android.jpg",
      ],
      [
        "Open Settings app and find \"App Management\" or simple \"Apps\".",
        "Tap the \"App List\" or \"Apps\" as illustrated above.",
        "On the next page you will be able to view and search all the apps "
            "installed on the device.",
      ],
    );
  }
}
