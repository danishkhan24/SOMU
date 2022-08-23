import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DeviceSearch extends StatefulWidget {
  const DeviceSearch({Key? key}) : super(key: key);

  @override
  State<DeviceSearch> createState() => _DeviceSearchState();
}

class _DeviceSearchState extends State<DeviceSearch> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          color: const Color.fromRGBO(41, 50, 65, 1),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.12,
              ),
              child: SizedBox(
                width: width,
                height: height * 0.8,
                child: InAppWebView(
                  initialUrlRequest:
                  URLRequest(url: Uri.parse("https://www.gsmarena.com/search.php3?")),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
