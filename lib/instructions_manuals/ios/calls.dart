import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class CallsInstructionPage extends StatelessWidget {
  const CallsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Calls",
      [
        "Open Phone App",
        "Tap \"Recents\" Tab",
        "Check Details of a Call",
      ],
      [
        "assets/calls/ios_homepage.jpg",
        "assets/calls/ios_recent_calls.jpg",
        "assets/calls/ios_calls_info.jpg",
      ],
      [
        "Open the Phone App as indicated in the image",
        "Tap the Recents tab in the bottom menu",
        "Tap the info button at the end of every call log to see the "
            "details of that call",
      ],
    );
  }
}
