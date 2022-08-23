import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class DownloadsInstructionPage extends StatelessWidget {
  const DownloadsInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Downloads",
      [
        "Open App Drawer",
        "Open \"Files\"/\"File Manager\" App",
        "Tap \"Downloads\" Button",
        "Open The App Drawer",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/downloads/download_button.jpeg",
        "assets/downloads/open_drawer.jpeg",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Files\" or \"My Files\" or \"File Manager\", whichever"
            " app is shown as highlighted in the image",
        "Now click the \"Downloads\" button which might contain a downward arrow next "
            "to it. This should take you to the downloads page where all the downloads "
            "are visible to you. In case you don't see a downloads button, "
            "then skip this step and read the step 4.",
        "If you do not see a downloads button, then click the top left "
            "three bars button, this will open the app drawer, "
            "from where you can select the \"Download\""
      ],
    );
  }
}
