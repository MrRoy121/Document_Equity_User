import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/calculator/widgets/calculatorAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/property.dart';
import 'calculator_safkobala_flat_screen.dart';
import 'calculator_safkobala_jomi_screen.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: CalculateAppbar(),
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
                  CalculatorSafJomiScreen()));
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
                "সাফ কবালা (জমি)",
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 20,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  CalculatorSafFlatScreen()));

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
                "সাফ কবালা (ফ্ল্যাট)",
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 20,
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
