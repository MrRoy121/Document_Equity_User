import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/PropertyScreen/propertydetails_screen.dart';
import 'package:document_equity_user/Screens/PropertyScreen/widgets/propertyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../models/property.dart';

class PropertyScreen extends StatefulWidget {
  const PropertyScreen({super.key});

  @override
  State<PropertyScreen> createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: PropertyAppbar(),
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
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('Property').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.data!.docs.isNotEmpty) {
                  return MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                        shrinkWrap: true,
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Property image = Property.fromJson(document.data());
                          return Container(
                            height: 200,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 8),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "প্রপার্টি নংঃ ",
                                      style: TextStyle(
                                        color: textcolorgreen,
                                        fontSize: 20,
                                        fontFamily: "SutonnyMJ",
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        image.propertyNo,
                                        style: TextStyle(
                                            color: textcolorgreen,
                                            fontSize: 22,
                                            fontFamily: "SutonnyMJ",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ঠিকানাঃ ",
                                      style: TextStyle(
                                        color: textcolorgreen,
                                        fontSize: 20,
                                        fontFamily: "SutonnyMJ",
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        image.propertyAdd,
                                        style: TextStyle(
                                          height: 1,
                                          color: textcolorgreen,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Row(
                                  children: [
                                    Text(
                                      "প্রপার্টির মুল্যঃ ",
                                      style: TextStyle(
                                        color: textcolorgreen,
                                        fontSize: 20,
                                        fontFamily: "SutonnyMJ",
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        "${image.plotprice}/-",
                                        style: TextStyle(
                                            color: textcolorgreen,
                                            fontSize: 22,
                                            fontFamily: "SutonnyMJ",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                const Expanded(child: SizedBox()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PropertyDetailsScreen(
                                                      ps: image,
                                                      uid: document.id,
                                                    )));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "  দেখুন",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }).toList()),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
