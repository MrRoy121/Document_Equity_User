import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/calculator/widgets/calculatorAppBar.dart';
import 'package:document_equity_user/Screens/dolilInfo/widgets/dolilinfoAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/moujacal.dart';
import '../../models/property.dart';
import 'package:photo_view/photo_view.dart';

class DolilinfodetailsScreen extends StatefulWidget {
  int ss;
  DolilinfodetailsScreen({super.key, required this.ss});
  @override
  State<DolilinfodetailsScreen> createState() => _DolilinfodetailsScreenState();
}

class _DolilinfodetailsScreenState extends State<DolilinfodetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: DolilinfoAppbar(),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: appbar,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 600,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                ),
              ],
            ),
            child: widget.ss == 1
                ? PhotoView(
                    minScale: PhotoViewComputedScale.contained * 1.0,
                    imageProvider: const AssetImage(
                      "assets/logo/namjari.jpg",
                    ),
                    backgroundDecoration:
                        const BoxDecoration(color: Colors.transparent),
                  )
                : widget.ss == 2
                    ? PhotoView(
                        minScale: PhotoViewComputedScale.contained * 1.0,
                        imageProvider: const AssetImage(
                          "assets/logo/dolil.jpg",
                        ),
                        backgroundDecoration:
                            const BoxDecoration(color: Colors.transparent),
                      )
                    : PhotoView(
                        minScale: PhotoViewComputedScale.contained * 1.0,
                        imageProvider: const AssetImage(
                          "assets/logo/bideshi.jpg",
                        ),
                        backgroundDecoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
          ),
        ],
      ),
    );
  }
}
