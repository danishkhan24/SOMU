import 'package:flutter/material.dart';
import 'package:somu/card_maker.dart';
import 'package:somu/device_page.dart';
import 'package:somu/imei_page.dart';
import 'package:somu/mobile_devices_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late List<Widget> devicesPage;

  @override
  void initState() {
    super.initState();

    devicesPage = [
      const DevicesPage(),
      const IMEISearch(),
      const DeviceSearch(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "KEV SOMU",
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontFamily: 'Roboto'),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      body: devicesPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(41, 50, 65, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: "IMEI Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_android), label: "Device Search"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DevicesPage extends StatefulWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(children: [
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
                      width * 0.22, height * 0.2),
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
    ]);
  }
}
