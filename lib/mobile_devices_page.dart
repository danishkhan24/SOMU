import 'package:flutter/material.dart';
import 'package:somu/card_maker.dart';
import 'package:somu/instruction_set.dart';
import 'package:flutter/services.dart';

class MobileDevices extends StatefulWidget {
  const MobileDevices({Key? key}) : super(key: key);

  @override
  State<MobileDevices> createState() => _MobileDevicesState();
}

class _MobileDevicesState extends State<MobileDevices> {
  List<String>? instructionAndroid;
  bool instructionLoaded = false;

  @override
  void initState() {
    super.initState();
    fileParser();
  }

  fileParser() async {
    String textAsset =
        "assets/All_Instructions/Android.txt"; //path to text file asset
    String text = await rootBundle.loadString(textAsset);
    instructionAndroid = text.isNotEmpty ? text.split(":::") : ["NaN", "NaN"];
    setState(() {
      instructionLoaded = true;
    });
    // print(text);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Mobile Devices",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontFamily: 'Roboto'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(41, 50, 65, 1),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.3),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.25, right: width * 0.1),
                    child: const Text(
                      "Please Select an Operating System",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              instructionLoaded
                  ? Padding(
                      padding: EdgeInsets.only(
                          left: 18, right: 18, top: height * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CardClass.cardMaker(
                            context,
                            "",
                            "assets/AppleLogo.svg",
                            width * 0.1,
                            height * 0.2,
                          ),
                          CardClass.cardMaker(
                            context,
                            "",
                            "assets/Android.svg",
                            width * 0.1,
                            height * 0.2,
                            InstructionPage(Instruction(instructionAndroid![0],
                                instructionAndroid![1])),
                          ),
                        ],
                      ),
                    )
                  : const Center(child: CircularProgressIndicator.adaptive()),
            ],
          ),
        ],
      ),
    );
  }
}
