import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/calculator/widgets/calculatorAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/moujacal.dart';
import '../../models/property.dart';

class CalculatorSafJomiScreen extends StatefulWidget {
  const CalculatorSafJomiScreen({super.key});

  @override
  State<CalculatorSafJomiScreen> createState() => _CalculatorSafJomiScreenState();
}

class _CalculatorSafJomiScreenState extends State<CalculatorSafJomiScreen> {
  int _jupzilatype = 1;
  String jselectedmouja = 'মৌজা বাছাই করুণ', jselectedjomi = "দোকান ভিট/দোকান";
  late MoujaCal jsele;
  bool jmouja = true,flat = false;
  double jhishab = 0.0, jmothishab = 0.0;
  TextEditingController _jshotanghoamount = TextEditingController(text: "0");
  TextEditingController _jservicecharge = TextEditingController(text: "0");
  List<MoujaCal> mmmj1 = [], mmmj2 = [];
  var mouja1 = ['মৌজা বাছাই করুণ'],
      mouja2 = ['মৌজা বাছাই করুণ'],
      jomi = [
        "দোকান ভিট/দোকান",
        "ভিটা/বাড়ী",
        "সাইল",
        "আমন",
        "বোর",
        "ডোবা/পতিত",
        "টিলা",
        "ছারাবাড়ী/ বরন্ডী",
        "চারা/ ছনখলা"
      ];

  Future<dynamic> getData() async {
    await FirebaseFirestore.instance
        .collection("Bazar Mullo Talika")
        .orderBy("SL", descending: false)
        .get()
        .then((qsnapshpt) {
      qsnapshpt.docs.forEach((element) {
        setState(() {
          if (element["Type"] == 1) {
            mouja1.add(element["Mouja Naam"]);
            mmmj1.add(MoujaCal(
                Amon: element["Amon"],
                Boor: element["Boor"],
                Chara: element["Chara"],
                Charabari: element["Charabari"],
                Duba: element["Duba"],
                Dukan: element["Dukan"],
                jlno: element["JL No"],
                moujaname: element["Mouja Naam"],
                Shail: element["Shail"],
                sl: element["SL"],
                Tila: element["Tila"],
                Type: element["Type"],
                Vita: element["Vita"]));
          }
        });
      });
    });
    await FirebaseFirestore.instance
        .collection("Bazar Mullo Talika")
        .orderBy("SL", descending: false)
        .get()
        .then((qsnapshpt) => {
      qsnapshpt.docs.forEach((element) {
        setState(() {
          if (element["Type"] == 2) {
            mouja2.add(element["Mouja Naam"]);
            mmmj2.add(MoujaCal(
                Amon: element["Amon"],
                Boor: element["Boor"],
                Chara: element["Chara"],
                Charabari: element["Charabari"],
                Duba: element["Duba"],
                Dukan: element["Dukan"],
                jlno: element["JL No"],
                moujaname: element["Mouja Naam"],
                Shail: element["Shail"],
                sl: element["SL"],
                Tila: element["Tila"],
                Type: element["Type"],
                Vita: element["Vita"]));
          }
        });
      })
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: CalculateAppbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
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
              width: double.infinity,
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng ? "উপজেলার ধরন" : "Upazila Category",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textcolorgreen,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 50, top: 15),
                    child: Column(
                      children: [
                        RadioListTile(
                          title: Text(
                            banglaleng
                                ? "সিটি কর্পোরেশন"
                                : "City Corporation",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,),
                          ),
                          value: 1,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          activeColor:textcolorgreen,
                          groupValue: _jupzilatype,
                          onChanged: (value) {
                            setState(() {
                              _jupzilatype = value!;
                              jmouja = true;
                              jselectedmouja = 'Select Mouja';
                            });
                          },
                        ),
                        const SizedBox(height: 20,),
                        RadioListTile(
                          title: Text(
                            banglaleng ? "উপজেলা" : "Upozila",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,),
                          ),
                          value: 2,
                          activeColor: textcolorgreen,
                          groupValue: _jupzilatype,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              _jupzilatype = value!;
                              jmouja = false;
                              jselectedmouja = 'Select Mouja';
                            });
                          },
                        ),
                        const SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      banglaleng
                          ? "মৌজা সিলেক্ট করুন"
                          : "Select Mouja",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textcolorgreen,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 80, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.grey.shade400)),
                    child: DropdownButton(
                      value: jselectedmouja,
                      underline: null,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: jmouja
                          ? mouja1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textcolorgreen,
                            ),
                          ),
                        );
                      }).toList()
                          : mouja2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textcolorgreen,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          jselectedmouja = newValue!;
                          if (jmouja) {
                            jsele = mmmj1[mouja1.indexOf(newValue)-1];
                          } else {
                            jsele = mmmj2[mouja2.indexOf(newValue)-1];
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      banglaleng ? "জমির ধরণ" : "Jomi Type",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textcolorgreen,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 80, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.grey.shade400)),
                    child: DropdownButton(
                      value: jselectedjomi,
                      underline: null,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: jomi.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: textcolorgreen,
                                fontFamily: 'SutonnyMJ'),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          jselectedjomi = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
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
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng
                          ? "শতাংশের পরিমাণ"
                          : "Amount Of Sotansho",
                      style: TextStyle(
                          fontSize: 18,
                          color: textcolorgreen,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        ),
                    child: TextField(
                      controller: _jshotanghoamount,
                      cursorColor:textcolorgreen,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,),
                      decoration:  InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolorgreen),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolorgreen),
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
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
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng?
                      "সার্ভিস চার্জ" : "Service Charge",
                      style: TextStyle(
                          fontSize: 18,
                          color: textcolorgreen,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _jservicecharge,
                      cursorColor:textcolorgreen,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,),
                      decoration:  InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: textcolorgreen),
                      ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: textcolorgreen),
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: () {
                int jomival = 0;

                if (jselectedjomi == jomi[0]) {
                  jomival = jsele.Dukan;
                } else if (jselectedjomi == jomi[1]) {
                  jomival = jsele.Vita;
                } else if (jselectedjomi == jomi[2]) {
                  jomival = jsele.Shail;
                } else if (jselectedjomi == jomi[3]) {
                  jomival = jsele.Amon;
                } else if (jselectedjomi == jomi[4]) {
                  jomival = jsele.Boor;
                } else if (jselectedjomi == jomi[5]) {
                  jomival = jsele.Duba;
                } else if (jselectedjomi == jomi[6]) {
                  jomival = jsele.Tila;
                } else if (jselectedjomi == jomi[7]) {
                  jomival = jsele.Charabari;
                } else if (jselectedjomi == jomi[8]) {
                  jomival = jsele.Chara;
                }
                double chalan =0.105;
                if(_jupzilatype == 2){
                  chalan = 0.075;
                }
                if (_jshotanghoamount.text.isNotEmpty) {
                  double A = (double.parse(_jshotanghoamount.text) * jomival);
                  double B = A*chalan;
                  double seresta = 2700;
                  if(A>=100000 && A<=1000000){
                    seresta = seresta+1920;
                  }else if(A>=1000000 && A<=2000000){
                    seresta = seresta+2430;
                  }else if(A>=2000000 && A<=3000000){
                    seresta = seresta+2920;
                  }else if(A>=3000000){
                    seresta = seresta+3420;
                  }
                  print(A);

                  double F = B + seresta;
                  double FH= F;
                  if(_jservicecharge.text.isNotEmpty){
                    FH = (double.parse(_jservicecharge.text) +
                        F);
                  }
                  setState(() {
                    jhishab = F;
                    jmothishab = FH;
                  });
                }
              },
              child: Container(
                width: double.infinity,
                height: 65,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
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
                const Text(
                  "ক্যালকুলেট",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration( color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng?
                      "হিসাব :" : "Sum",
                      style: TextStyle(
                          fontSize: 18,
                          color: textcolorgreen,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: Colors.grey.shade400,
                    ),
                    child: Text(
                      jhishab.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng?
                      "মোট হিসাব :" : "Total Sum",
                      style: TextStyle(
                          fontSize: 18,
                          color: textcolorgreen,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade400,
                    ),
                    child: Text(
                      jmothishab.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
