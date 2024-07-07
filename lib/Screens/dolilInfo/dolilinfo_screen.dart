import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/calculator/widgets/calculatorAppBar.dart';
import 'package:document_equity_user/Screens/dolilInfo/widgets/dolilinfoAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/property.dart';
import 'dolilinfodetails.dart';

class DolilinfoScreen extends StatefulWidget {
  const DolilinfoScreen({super.key});

  @override
  State<DolilinfoScreen> createState() => _DolilinfoScreenState();
}

class _DolilinfoScreenState extends State<DolilinfoScreen> {
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
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                   DolilinfodetailsScreen(ss: 1,)));
            },
            child: Container(
              width: double.infinity,
              height: 65,
              alignment: Alignment.center,
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
              child:
              Text(
                "নামজারির জন্য আবশ্যিক ডকুমেন্ট",
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DolilinfodetailsScreen(ss: 2,)));
            },
            child: Container(
              width: double.infinity,
              height: 65,
              alignment: Alignment.center,
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
              child:
              Text(
                "দলিল রেজিস্ট্রারীর জন্য আবশ্যিক ডকুমেন্ট",
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  DolilinfodetailsScreen(ss: 3,)));
            },
            child: Container(
              width: double.infinity,
              height: 85,
              alignment: Alignment.center,
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
              child:
              Text(
                "বিদেশী পাওয়ার অব এটর্নির জন্য\nআবশ্যিক ডকুমেন্ট",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
