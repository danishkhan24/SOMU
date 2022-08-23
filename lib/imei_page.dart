import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class IMEISearch extends StatefulWidget {
  const IMEISearch({Key? key}) : super(key: key);

  @override
  State<IMEISearch> createState() => _IMEISearchState();
}

class _IMEISearchState extends State<IMEISearch> {
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
                      URLRequest(url: Uri.parse("https://www.imei.info/")),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
