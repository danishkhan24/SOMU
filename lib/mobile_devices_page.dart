import 'package:flutter/material.dart';
import 'package:somu/android_options.dart';
import 'package:somu/card_maker.dart';

import 'ios_options.dart';

class MobileDevices extends StatefulWidget {
  const MobileDevices({Key? key}) : super(key: key);

  @override
  State<MobileDevices> createState() => _MobileDevicesState();
}

class _MobileDevicesState extends State<MobileDevices> {
  bool instructionLoaded = false;

  @override
  void dispose() {
    instructionLoaded = false;
    super.dispose();
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
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.home_filled,
                size: width * 0.08,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 1,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
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
              Padding(
                padding:
                    EdgeInsets.only(left: 18, right: 18, top: height * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardClass.cardMaker(
                      context,
                      "",
                      "assets/AppleLogo.svg",
                      width * 0.1,
                      height * 0.2,
                      const IOSGuides(),
                    ),
                    CardClass.cardMaker(
                      context,
                      "",
                      "assets/Android.svg",
                      width * 0.1,
                      height * 0.2,
                      const AndroidGuides(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.2),
                child: const Text(
                  "Need Help Deciding? Click Here",
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
