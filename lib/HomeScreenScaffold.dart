import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: Center(
            child: Text(
              "SOMU APP",
              style: TextStyle(
                  color: Colors.black, fontSize: 36, fontFamily: 'Roboto'),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      // body: devicesPage.elementAt(_selectedIndex),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Row(
              children: [
                Card(
                  elevation: 5,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/AppleLogo.svg',
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/AppleLogo.svg',
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  elevation: 5,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/AppleLogo.svg',
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/AppleLogo.svg',
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "IMEI Search"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
