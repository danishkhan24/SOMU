import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class DownloadsInstructionPage extends StatelessWidget {
  const DownloadsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Downloads",
      [
        "Open \"Files\" App",
        "Tap \"Browse\" Button",
        "Tap on \"On my iPhone\"",
        "Tap \"Downloads\"",
      ],
      [
        "assets/downloads/open_downloads_ios.jpg",
        "assets/downloads/step_2_ios.jpg",
        "assets/downloads/step_3_ios.jpg",
        "assets/downloads/step_4_ios.jpg",
      ],
      [
        "Open the \"Files\" app as highlighted in the image",
        "Now click the \"Browse\" button.",
        "On this page tap on the \"On my iPhone\" to open all the files available"
            " on the device's local storage.",
        "There you will se a \"Downloads\" folder. Tap it to see its contents.",
      ],
    );
  }
}
