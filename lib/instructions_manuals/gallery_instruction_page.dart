import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class GalleryInstructionPage extends StatelessWidget {
  const GalleryInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      [
        "Open App Drawer",
        "Open Gallery/Photos App",
        "Check Images and Videos",
        "Archive/Hidden Photos",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/gallery/photos.jpeg",
        "assets/gallery/archive_photos.jpeg",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"Gallery\" or \"Photos\" app as highlighted in the image",
        "Here you should be able to see all the photos and videos",
        "Look for archived/hidden photos section, goto \"Library\" section, "
            "there you should be able to find archive folder.",
      ],
    );
  }
}
