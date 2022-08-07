import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class Section extends MultiSliver {
  Section({
    Key? key,
    required double width,
    required double height,
    required String number,
    required String title,
    Color headerColor = Colors.white,
    Color titleColor = Colors.black,
    required List<Widget> items,
  }) : super(
          key: key,
          pushPinnedChildren: true,
          children: [
            SliverPinnedHeader(
              child:
              Container(
                decoration: const BoxDecoration(color: Colors.blueGrey),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: width * 0.12,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(41, 50, 65, 1),
                        ),
                        child: Center(
                          child: Text(
                            number,
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate.fixed(items)),
          ],
        );
}


class SliverScaffold extends StatelessWidget {
  final String number;
  final String title;
  final String imageReference;
  final String description;

  const SliverScaffold(
      this.number, this.title, this.imageReference, this.description,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Calls",
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
            padding: EdgeInsets.only(top: height * 0.1),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.1),
            child: CustomScrollView(
              slivers: [
                Section(
                  width: width,
                  height: height,
                  number: number,
                  title: title,
                  headerColor: Colors.blue,
                  items: <Widget>[
                    Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageReference),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        description,
                        style: const TextStyle(
                            fontSize: 16, overflow: TextOverflow.fade),
                      ),
                    ),
                  ],
                ),
                Section(
                  width: width,
                  height: height,
                  number: "2",
                  title: 'Select Calls',
                  headerColor: Colors.red,
                  items: List.generate(
                      10,
                      (index) => ListTile(
                            title: Text('Item #${index + 11}'),
                          )),
                ),
                Section(
                  width: width,
                  height: height,
                  number: "3",
                  title: 'Category #3',
                  headerColor: Colors.green,
                  items: List.generate(
                      10,
                      (index) => ListTile(
                            title: Text('Item #${index + 11}'),
                          )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
