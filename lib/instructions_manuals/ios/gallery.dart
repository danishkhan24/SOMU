import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class GalleryInstructionPage extends StatelessWidget {
  const GalleryInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Gallery",
      [
        "Open Gallery/Photos App",
        "Check Images and Videos",
        "Deleted and Hidden Photos",
      ],
      [
        "assets/gallery/open_gallery_ios.jpg",
        "assets/gallery/search_photos_ios.jpg",
        "assets/gallery/hidden_archived_photos_ios.jpg",
      ],
      [
        "Open the \"Gallery\" or \"Photos\" app as highlighted in the image",
        "Here you should be able to see all the photos and videos, "
            "moreover you can also search any specific photo or video, "
            "by selecting the search tab from the bottom menu and then "
            "writing keywords in search box",
        "To access recently deleted media files or the hidden media files, "
            "swipe to the bottom of Albums tab, there you will see two options, "
            "for each folder respectively",
      ],
    );
  }
}
