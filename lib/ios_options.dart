import 'package:flutter/material.dart';
import 'package:somu/search_device_page_ios.dart';

import 'instructions_manuals/ios/seize_device.dart';

class IOSGuides extends StatefulWidget {
  const IOSGuides({Key? key}) : super(key: key);

  @override
  State<IOSGuides> createState() => _IOSGuidesState();
}

class _IOSGuidesState extends State<IOSGuides> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "iOS Options",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontFamily: 'Roboto-Regular'),
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
                      "Please Select an Option",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding:
                  EdgeInsets.only(left: 18, right: 18, top: height * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          child: Ink(
                            width: width * 0.8,
                            height: height * 0.1,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(41, 50, 65, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(100)),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100),
                              splashColor: Colors.white,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SearchDevicePageIOS()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(
                                      Icons.screen_search_desktop,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Search The Device",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          child: Ink(
                            width: width * 0.8,
                            height: height * 0.1,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(41, 50, 65, 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(100)),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100),
                              splashColor: Colors.white,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SeizeDeviceInstructionPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(
                                      Icons.phonelink_lock,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Seize The Device",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
