import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/PropertyScreen/widgets/propertyAppBar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../models/property.dart';
import '../../models/propertylink.dart';

class PropertyDetailsScreen extends StatefulWidget {
  Property ps;
  String uid;
  PropertyDetailsScreen({required this.ps, required this.uid, super.key});

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {
  FirebaseStorage storage = FirebaseStorage.instance;
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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "প্রপার্টি নং ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.propertyNo,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "কন্টাক্ট নং ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.contactNo,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "প্রপার্টির মূল্য ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.plotprice,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "ঠিকানা",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.propertyAdd,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "প্লটের পরিমাপ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "${widget.ps.plotsumshot} শতাংশ",
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 18,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "প্লটের পরিমাপ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "পূ.${widget.ps.ploteast}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "প.${widget.ps.plotwest}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "উ.${widget.ps.plotsouth}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "দ.${widget.ps.plotnorth}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "রাস্তা",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "পূ.${widget.ps.roadeast}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "প.${widget.ps.roadwest}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "উ.${widget.ps.roadsouth}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "দ.${widget.ps.roadnorth}",
                            style: TextStyle(
                                color: textcolorgreen,
                                fontSize: 16,
                                fontFamily: "SutonnyMJ",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "রাস্তার প্রকার",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.roadtype,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "বৈধ ডকুমেন্ট আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.roaddocument,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "এখনই বাড়ি করার উপযোগী কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.ekkonibaribanaorupojugi,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "বিদ্যুৎ আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.biddut,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "পাকা রাস্তা আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.pakarasta,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "উপজেলার ধরন",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.upzilatype,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "ড্রেনেজ সুবিধা আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.drainage,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "নামজারি, আদায় কর ও খাজনা আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.namzariadaikor,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "নিরাপত্তা সুবিধা কেমন?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.security,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "সামাজিক পরিবেশ কেমন?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.socialenvironment,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "পাশে কোন গুরুত্বপূর্ণ স্থাপনা আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: widget.ps.conbuilding1.isNotEmpty
                          ? Text(
                              "হ্যাঁ",
                              style: TextStyle(
                                  color: textcolorgreen,
                                  fontSize: 16,
                                  fontFamily: "SutonnyMJ",
                                  fontWeight: FontWeight.bold),
                            )
                          : Text(
                              "না",
                              style: TextStyle(
                                  color: textcolorgreen,
                                  fontSize: 16,
                                  fontFamily: "SutonnyMJ",
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "স্থাপনার নাম ও দূরত্ব",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "${widget.ps.conbuilding1}, ${widget.ps.conbuilding2}, ${widget.ps.conbuilding3}, ${widget.ps.conbuilding4}",
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            height: 1,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "পাশে কোন স্কুল ও কলেজ আছে কিনা?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: widget.ps.conschool1.isNotEmpty
                          ? Text(
                              "হ্যাঁ",
                              style: TextStyle(
                                  color: textcolorgreen,
                                  fontSize: 16,
                                  fontFamily: "SutonnyMJ",
                                  fontWeight: FontWeight.bold),
                            )
                          : Text(
                              "না",
                              style: TextStyle(
                                  color: textcolorgreen,
                                  fontSize: 16,
                                  fontFamily: "SutonnyMJ",
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "প্রতিষ্ঠানের নাম ও দূরত্ব",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        "${widget.ps.conschool1}, ${widget.ps.conschool2}, ${widget.ps.conschool3}, ${widget.ps.conschool4}",
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            height: 1,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "শহর থেকে দুরত্ব",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        widget.ps.towndistance,
                        style: TextStyle(
                            color: textcolorgreen,
                            fontSize: 16,
                            height: 1,
                            fontFamily: "SutonnyMJ",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(bottom: 15),
                    ),
                    const Text(
                      "প্রপার্টির ছবি",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 300,
                      child: StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('Property_Links')
                            .where(widget.uid, isEqualTo: "Property ID")
                            .snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          print(snapshot.toString());
                          if (snapshot.hasError) {
                            return const Text('Something went wrong');
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }

                          if (snapshot.data!.docs.isNotEmpty) {
                            return MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4.0,
                                  mainAxisSpacing: 8.0,
                                  children: List.generate(
                                      snapshot.data!.docs.length ?? 0, (index) {
                                    PropertyLink image = PropertyLink.fromJson(
                                        snapshot.data?.docs[index]);
                                    String url = image.imagelink;
                                    String id = url.substring(url.length - 11);
                                    String link =
                                        "https://img.youtube.com/vi/$id/0.jpg";
                                    return Center(
                                        child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: image.isvideo
                                          ? Image.network(link)
                                          : Image.network(image.imagelink),
                                    ));
                                  }),
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
