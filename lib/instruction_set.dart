import 'package:flutter/material.dart';

class Instruction {
  String title;
  String description;

  Instruction(this.title, this.description);
}

class InstructionPage extends StatelessWidget {
  final Instruction instruction;

  const InstructionPage(this.instruction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Instruction Manual",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(41, 50, 65, 1),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.2),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.15, left: width * 0.1, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    instruction.title,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.25,
                left: width * 0.06,
                right: width * 0.06,
                bottom: height * 0.05),
            child: SingleChildScrollView(
              child: Text(instruction.description,
                  style: const TextStyle(color: Colors.black, fontSize: 20)),
            ),
          )
        ],
      ),
    );
  }
}
