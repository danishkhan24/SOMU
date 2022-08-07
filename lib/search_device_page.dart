import 'package:flutter/material.dart';
import 'package:somu/custom_icons_icons.dart';
import 'package:somu/instructions_manuals/calls.dart';

class SearchDevicePage extends StatelessWidget {
  const SearchDevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Android Options",
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
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
            padding: EdgeInsets.only(top: height * 0.2),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.15, right: width * 0.1),
                child: const Text(
                  "Search Device Guide List",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.2, left: width * 0.05, right: width * 0.05),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.01),
                    child: Category(
                      context,
                      "General",
                      width * 0.9,
                      height * 0.6,
                      [
                        "Calls",
                        "Texts",
                        "Gallery",
                        "Downloads",
                        "Browsing History",
                        "Location History",
                      ],
                      [
                        Icons.call,
                        Icons.message,
                        Icons.photo,
                        Icons.download_rounded,
                        Icons.history,
                        Icons.location_on,
                      ],
                    ),
                  ),
                  Category(
                    context,
                    "Applications",
                    width * 0.9,
                    height * 1.1,
                    [
                      "WhatsApp",
                      "SnapChat",
                      "Messenger",
                      "Instagram",
                      "Facebook",
                      "Google Drive",
                      "One Drive",
                      "Dropbox",
                      "Twitter",
                      "Discord",
                      "Reddit",
                      "Telegram",
                    ],
                    [
                      CustomIcons.whatsapp,
                      CustomIcons.snapchat,
                      CustomIcons.facebook_messenger,
                      CustomIcons.instagram,
                      CustomIcons.facebook,
                      CustomIcons.google_drive,
                      CustomIcons.cloud_1,
                      CustomIcons.dropbox_1,
                      CustomIcons.twitter_1,
                      CustomIcons.discord,
                      CustomIcons.reddit,
                      CustomIcons.telegram_plane,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Category(BuildContext context, String title, double width,
      double height, List<String> details, List<IconData> icons) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        // color: Colors.grey, //change if you want to add bg-color to listview
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: height,
            width: width,
            child: MediaQuery.removePadding(
              removeTop: true,
              removeBottom: true,
              removeLeft: true,
              removeRight: true,
              context: context,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: details.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Material(
                          child: InkWell(
                            splashColor: Colors.grey,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const SliverScaffold(
                                          "1",
                                          "Go to Settings",
                                          "assets/test_photo.png",
                                          "Then do da dudadudadu Then do da dudadudadu"
                                              "Then do da dudadudadu Then do da dudadudadu",
                                      ),
                                    /*DescriptionCard(
                                          "1",
                                          "Go to Settings",
                                          "assets/test_photo.png",
                                          "Then do da dudadudadu Then do da dudadudadu Then do da dudadudadu "
                                              "Then do da dudadudadu Then do da dudadudadu Then do da dudadudadu ")*/));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(icons[index], size: 24, color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(details[index],
                                      style: TextStyle(fontSize: 24)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
