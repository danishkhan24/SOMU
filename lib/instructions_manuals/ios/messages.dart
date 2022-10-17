import 'package:flutter/material.dart';
import 'package:somu/instructions_manuals/template_instruction.dart';

class MessagesInstructionPage extends StatelessWidget {
  const MessagesInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverScaffold(
      "Messages",
      [
        "Open Messages App",
        "View Messages",
      ],
      [
        "assets/messages/homepage_ios.jpg",
        "assets/messages/messages_ios.jpg",
      ],
      [
        "Open the Messages App as indicated in the image",
        "There you can view all the messages.",
      ],
    );
  }
}
