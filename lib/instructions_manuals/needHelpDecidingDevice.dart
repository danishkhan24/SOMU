import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class DeviceHelpInstructionPage extends StatelessWidget {
  const DeviceHelpInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Determine Device OS",
      [
        "Remove all/any casings",
        "Turn the Device",
        "Check Logo on the Back",
      ],
      [
        "assets/remove_phone_case.webp",
        "assets/back_side_phone.jpg",
        "assets/iOS_android_logos.jpeg",
      ],
      [
        "If there are any casing on the phone, remove them to reveal the actual"
            " device.",
        "Turn the phone and check the back side of the device for logo.",
        "If the logo is an \"Apple\" then it is an iOS device, if not then it "
            "is an Android device.",
      ],
    );
  }
}
