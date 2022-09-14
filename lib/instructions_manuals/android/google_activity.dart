import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class GoogleActivityInstructionPage extends StatelessWidget {
  const GoogleActivityInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Google Activity",
      [
        "Go to Google.com",
        "Search \"google activity\"",
        "\"Welcome to my Activity\"",
        "View or Search the Google Activity",
      ],
      [
        "assets/google_activity/step_1.jpg",
        "assets/google_activity/step_2.jpg",
        "assets/google_activity/step_3.jpg",
        "assets/google_activity/step_4.jpg",
      ],
      [
        "Open any browser and go to \"google.com\", then on the top right corner "
            "see if an account is signed in. If there are multiple accounts, "
            "follow this complete tutorial for each one of them individually.",
        "In the search bar of google.com, search \"google activity\"",
        "Tap on the link titled as \"welcome to my activity\"",
        "Once you click on the link, you will see the google activity page of "
            "that account, scroll down a bit and you will see the past activity "
            "along with a search bar to search for any specific keyword in "
            "the whole activity. Moreover, you can also see "
            "\"Web & App Activity\" and \"Location History\" as well.",
      ],
    );
  }
}
