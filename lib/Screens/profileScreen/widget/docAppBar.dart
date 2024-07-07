import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';

class DocAppbar extends StatefulWidget {
  @override
  State<DocAppbar> createState() => _DocAppbarState();
}

class _DocAppbarState extends State<DocAppbar> {
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
                banglaleng ? "আমার ডকুমেন্টস\nসমূহ" : 'My Documents',
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
