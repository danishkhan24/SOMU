import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class SeizeDeviceInstructionPage extends StatelessWidget {
  const SeizeDeviceInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Seize Device",
      [
        "Get Password",
        "Open Settings -> Passwords",
        "Remove Fingerprints / Face IDs / Pattern",
        "Open \"Security\"",
        "Turn off \"Find My Device\"",
        "Put the device on Airplane Mode",
      ],
      [
        "assets/seize_device/step_1_android.jpeg",
        "assets/seize_device/step_2_android.jpg",
        "assets/seize_device/step_3_android.jpg",
        "assets/seize_device/step_4_android.jpg",
        "assets/seize_device/step_5_android.jpg",
        "assets/seize_device/step_6_android.jpg",
      ],
      [
        "Collect the password from the device owner.",
        "Next goto \"Settings\" and locate \"Passwords\"."
            " It will prompt you to enter the password retrieved"
            " from owner earlier.",
        "Turn off all lock screen password, fingerprints, patterns and face IDs",
        "Go back to settings home, and open Apple ID settings by tapping on "
            "the name as shown above.",
        "Tap on \"Find My Device\", and on the next page turn it off",
        "Go to settings homepage and search for \"Airplane\". "
            "Select the Airplane Mode from the results turn it on to"
            " put the device on airplane mode."
      ],
    );
  }
}
