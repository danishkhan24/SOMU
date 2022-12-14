import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class SnapchatInstructionPage extends StatelessWidget {
  const SnapchatInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "SnapChat",
      [
        "Open App Drawer",
        "Find & Open \"SnapChat\" App",
        "Swipe Up On Camera Screen",
        "Select \"My Eyes Only\" Tab",
        "Look for Hidden Photos/Videos",
      ],
      [
        "assets/calls/homepage.jpeg",
        "assets/calls/app_drawer.jpeg",
        "assets/snapchat/homescreen.jpg",
        "assets/snapchat/mysnaps.jpg",
        "assets/snapchat/my_eyes_only.jpg",
      ],
      [
        "Swipe Up as shown in the image to open the app drawer",
        "Open the \"SnapChat\" application as highlighted in the image",
        "Now after opening the application, you would be on camera screen"
            " there you need to swipe up to open snapchat gallery",
        "Now Either select \"My Eyes Only\" or swipe right three times "
            "this will take you to the hidden pics/videos.",
        "If you see \"Set Up My Eyes Only\", then there are no hidden media files."
            " Else this page will prompt you to enter password, which you "
            "shall get from the device owner and after entering password "
            "you will see all the hidden media files."
      ],
    );
  }
}
