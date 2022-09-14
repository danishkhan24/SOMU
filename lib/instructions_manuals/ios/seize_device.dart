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
        "Open Settings",
        "Remove Face ID",
        "Turn off Passcode",
        "Open Apple ID Settings",
        "Select \"Find My\"",
        "Disable all features in \"Find my iPhone\"",
        "Put the device on Airplane Mode",
      ],
      [
        "assets/seize_device/step_1_ios.jpeg",
        "assets/seize_device/step_2_ios.jpg",
        "assets/seize_device/step_3_ios.jpg",
        "assets/seize_device/step_4_ios.jpg",
        "assets/seize_device/step_5_ios.jpg",
        "assets/seize_device/step_6_ios.jpg",
        "assets/seize_device/step_7_ios.jpg",
        "assets/seize_device/step_8_ios.jpg",
      ],
      [
        "Collect the password from the device owner.",
        "Next goto \"Settings\" and locate \"Face ID and Passcode\"."
            " It will prompt you to enter the password retrieved"
            " from owner earlier.",
        "Turn off Face ID for all apps and features.",
        "Disable the passcode from device by tapping on the button as "
            "illustrated in the image.",
        "Go back to settings home, and open Apple ID settings by tapping on "
            "the name as shown above.",
        "Now select \"Find My\"",
        "Tap on \"Find my iPhone\" and on the next page which opens up, "
            "turn off all the features available inside.",
        "Last yet important, put the device on airplane mode."
      ],
    );
  }
}
