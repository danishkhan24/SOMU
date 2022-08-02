import 'package:flutter/material.dart';
import 'package:somu/card_maker.dart';
import 'package:somu/mobile_devices_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late TextEditingController myController;
  late List<Widget> devicesPage;

  @override
  void initState() {
    super.initState();
    myController = TextEditingController();

    devicesPage = [
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 32.0, top: 32),
              child: Text(
                "All Devices",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Text(
                "See Devices",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter IMEI",
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.white),
                          gapPadding: 0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    controller: myController,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: const CircleBorder(),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.search),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SOMU APP",
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontFamily: 'Roboto'),
          ),
        ),
        backgroundColor: /*const Color.fromRGBO(41, 50, 65, 1),*/ Colors
            .transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      // body: devicesPage.elementAt(_selectedIndex),
      body: Stack(children: [
        Container(
          color: const Color.fromRGBO(41, 50, 65, 1),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.35),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28.0, top: height * 0.15),
                child: const Text(
                  "All Devices",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(28.0),
                child: Text(
                  "See Devices",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardClass.cardMaker(context, "", "assets/MobilePhones.svg",
                        width * 0.22, height * 0.2, const MobileDevices()),
                    CardClass.cardMaker(context, "", "assets/Computers.svg",
                        width * 0.22, height * 0.2, const MobileDevices()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 8, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardClass.cardMaker(context, "", "assets/GameConsoles.svg",
                        width * 0.2, height * 0.2),
                    CardClass.cardMaker(context, "", "assets/Tablets.svg",
                        width * 0.2, height * 0.2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(41, 50, 65, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "IMEI Search"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
