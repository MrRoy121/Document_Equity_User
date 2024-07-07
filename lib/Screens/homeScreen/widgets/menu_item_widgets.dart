import 'package:flutter/material.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';

class MenuItem extends StatelessWidget {

  String asset, text;
  void Function() onclick;

  MenuItem({super.key, required this.asset,required this.text, required this.onclick});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width-300,
              width:  MediaQuery.of(context).size.width-300,
              padding: EdgeInsets.all( MediaQuery.of(context).size.width/14),
              decoration: BoxDecoration(
                  color: menuitembg,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(asset,
                fit: BoxFit.fill,),
            ),
            const SizedBox(height: 10,),
            Text(
              text,textAlign: TextAlign.center,
              style: TextStyle(
                  color: textcolorgreenlight,
                  fontSize: 14,
                  fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
