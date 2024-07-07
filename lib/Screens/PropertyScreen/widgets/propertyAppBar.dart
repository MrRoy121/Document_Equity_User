import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';

class PropertyAppbar extends StatefulWidget {
  @override
  State<PropertyAppbar> createState() => _PropertyAppbarState();
}

class _PropertyAppbarState extends State<PropertyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: appbar,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: appbar,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        toolbarHeight: 120.0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(),
        centerTitle: true,
        elevation: 0,
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 32,
                ),
              ),
              Text(
                banglaleng ? "জমি\nকেনা বেচা" : 'Property\n Buy Sell',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                    fontWeight: FontWeight.bold),
              ),
             const SizedBox(width: 35,),
            ],
          ),
        ),
      );
  }
}
