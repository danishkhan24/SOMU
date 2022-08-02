import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardClass {
  static Widget cardMaker(BuildContext context, String text, String image,
      double width, double height,
      [Widget? route]) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(32),
        splashColor: Colors.black,
        onTap: () {
          route != null
              ? Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          )
              : null;
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                image,
                alignment: Alignment.center,
                width: width,
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
