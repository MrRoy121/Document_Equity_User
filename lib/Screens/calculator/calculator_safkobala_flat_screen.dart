import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/calculator/widgets/calculatorAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/moujacal.dart';
import '../../models/property.dart';

class CalculatorSafFlatScreen extends StatefulWidget {
  const CalculatorSafFlatScreen({super.key});

  @override
  State<CalculatorSafFlatScreen> createState() =>
      _CalculatorSafFlatScreenState();
}

class _CalculatorSafFlatScreenState extends State<CalculatorSafFlatScreen> {
  int _fupzilatype = 1, _fareatype = 1;
  String fselectedmouja = 'মৌজা বাছাই করুণ', fselectedjomi = "দোকান ভিট/দোকান";
  late MoujaCal fsele;
  bool fmouja = true, flat = false;
  double fhishab = 0.0, fmothishab = 0.0;
  TextEditingController _fshotanghoamount = TextEditingController(text: "0");
  TextEditingController _fservicecharge = TextEditingController(text: "0");
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
              child: Column(
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
                            banglaleng ? "সিটি কর্পোরেশন" : "City Corporation",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 1,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: textcolorgreen,
                          groupValue: _fupzilatype,
                          onChanged: (value) {
                            setState(() {
                              _fupzilatype = value!;
                              fmouja = true;
                              fselectedmouja = 'মৌজা বাছাই করুণ';
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RadioListTile(
                          title: Text(
                            banglaleng ? "উপজেলা" : "Upozila",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 2,
                          activeColor: textcolorgreen,
                          groupValue: _fupzilatype,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              _fupzilatype = value!;
                              fmouja = false;
                              fselectedmouja = 'মৌজা বাছাই করুণ';
                            });
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      banglaleng ? "মৌজা সিলেক্ট করুন" : "Select Mouja",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textcolorgreen,
                          fontFamily: 'inter'),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 10, left: 80, bottom: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: DropdownButton(
                      value: fselectedmouja,
                      underline: null,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: fmouja
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
                          fselectedmouja = newValue!;
                          if (fmouja) {
                            fsele = mmmj1[mouja1.indexOf(newValue) - 1];
                          } else {
                            fsele = mmmj2[mouja2.indexOf(newValue) - 1];
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              child: Column(
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
                    margin:
                        const EdgeInsets.only(top: 10, left: 80, bottom: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: DropdownButton(
                      value: fselectedjomi,
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
                          fselectedjomi = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng ? "এরিয়ার ধরণ" : "Area Category",
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
                            banglaleng ? "রেসিডেন্সিয়াল" : "Residential",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 1,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: textcolorgreen,
                          groupValue: _fareatype,
                          onChanged: (value) {
                            setState(() {
                              _fareatype = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RadioListTile(
                          title: Text(
                            banglaleng ? "কমার্শিয়াল" : "Commercial",
                            style: TextStyle(
                              color: textcolorgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: 2,
                          activeColor: textcolorgreen,
                          groupValue: _fareatype,
                          dense: true,
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(() {
                              _fareatype = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng
                          ? "ফ্ল্যাটের পরিমাণ (sq.ft.)"
                          : "Amount Of Flat (sq.ft.)",
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
                      controller: _fshotanghoamount,
                      cursorColor: textcolorgreen,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,
                      ),
                      decoration: InputDecoration(
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
            const SizedBox(
              height: 10,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng ? "সার্ভিস চার্জ" : "Service Charge",
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
                      controller: _fservicecharge,
                      cursorColor: textcolorgreen,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,
                      ),
                      decoration: InputDecoration(
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
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                if (_fupzilatype == 1) {
                  int jomival = 0;
                  if (fselectedjomi == jomi[0]) {
                    jomival = fsele.Dukan;
                  } else if (fselectedjomi == jomi[1]) {
                    jomival = fsele.Vita;
                  } else if (fselectedjomi == jomi[2]) {
                    jomival = fsele.Shail;
                  } else if (fselectedjomi == jomi[3]) {
                    jomival = fsele.Amon;
                  } else if (fselectedjomi == jomi[4]) {
                    jomival = fsele.Boor;
                  } else if (fselectedjomi == jomi[5]) {
                    jomival = fsele.Duba;
                  } else if (fselectedjomi == jomi[6]) {
                    jomival = fsele.Tila;
                  } else if (fselectedjomi == jomi[7]) {
                    jomival = fsele.Charabari;
                  } else if (fselectedjomi == jomi[8]) {
                    jomival = fsele.Chara;
                  }
                  double X = jomival * 0.03;
                  double govtfee = 1500;
                  if (_fareatype == 2) {
                    govtfee = 2500;
                  }
                  if (_fshotanghoamount.text.isNotEmpty) {
                    double A =
                    (double.parse(_fshotanghoamount.text) *
                        govtfee);
                    double B = 0;
                    if (A >= 1 && A <= 1600) {
                      B = A * 0.02;
                    } else if (A >= 1600) {
                      B = A * 0.045;
                    }
                    double C =
                        (double.parse(_fshotanghoamount.text) *
                            0.092903) *
                            700;

                    double E = X + B + C;
                    double D = E * 0.105;
                    double seresta = 2700;
                    if (E < 200000) {
                      seresta = seresta + 1420;
                    }
                    if (E >= 200000 && E <= 1000000) {
                      seresta = seresta + 1920;
                    } else if (E >= 1000000 && E <= 2000000) {
                      seresta = seresta + 2430;
                    } else if (E >= 2000000 && E <= 3000000) {
                      seresta = seresta + 2920;
                    } else if (E >= 3000000) {
                      seresta = seresta + 3420;
                    }

                    double F = E + seresta + D;
                    double FH = F;
                    if (_fservicecharge.text.isNotEmpty) {
                      FH = (double.parse(_fservicecharge.text) +
                          F);
                    }
                    setState(() {
                      fhishab = F;
                      fmothishab = FH;
                    });
                  }
                } else {
                  int jomival = 0;
                  if (fselectedjomi == jomi[0]) {
                    jomival = fsele.Dukan;
                  } else if (fselectedjomi == jomi[1]) {
                    jomival = fsele.Vita;
                  } else if (fselectedjomi == jomi[2]) {
                    jomival = fsele.Shail;
                  } else if (fselectedjomi == jomi[3]) {
                    jomival = fsele.Amon;
                  } else if (fselectedjomi == jomi[4]) {
                    jomival = fsele.Boor;
                  } else if (fselectedjomi == jomi[5]) {
                    jomival = fsele.Duba;
                  } else if (fselectedjomi == jomi[6]) {
                    jomival = fsele.Tila;
                  } else if (fselectedjomi == jomi[7]) {
                    jomival = fsele.Charabari;
                  } else if (fselectedjomi == jomi[8]) {
                    jomival = fsele.Chara;
                  }
                  double X = jomival * 0.03;

                  if (_fshotanghoamount.text.isNotEmpty) {
                    double sqft =
                    double.parse(_fshotanghoamount.text);
                    double govtfee = 2000;
                    if (_fareatype == 1) {
                      if (sqft <= 1600) {
                        govtfee = 1000;
                      } else {
                        govtfee = 1200;
                      }
                    }
                    double A = (sqft * govtfee);

                    double C = (sqft * 0.092903) * 300;

                    double As = A * 0.03;
                    double D = X + As + C;

                    double seresta = 2700;
                    if (D >= 100000 && D < 200000) {
                      seresta = seresta + 1420;
                    }
                    if (D >= 200000 && D <= 1000000) {
                      seresta = seresta + 1920;
                    } else if (D >= 1000000 && D <= 2000000) {
                      seresta = seresta + 2430;
                    } else if (D >= 2000000 && D <= 3000000) {
                      seresta = seresta + 2920;
                    } else if (D >= 3000000) {
                      seresta = seresta + 3420;
                    }

                    double E = D + seresta;
                    double chalan = 0.125;
                    if (E <= 200000) {
                      chalan = 0.095;
                    }
                    double F = E + chalan;
                    double FS = 0;
                    if (_fservicecharge.text.isNotEmpty) {
                      FS = (double.parse(_fservicecharge.text) +
                          F);
                    }
                    setState(() {
                      fhishab = F;
                      fmothishab = FS;
                    });
                  }
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
                child: const Text(
                  "ক্যালকুলেট",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng ? "হিসাব :" : "Sum",
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
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300,
                    ),
                    child: Text(
                      fhishab.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banglaleng ? "মোট হিসাব :" : "Total Sum",
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
                      color: Colors.grey.shade300,
                    ),
                    child: Text(
                      fmothishab.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textcolorgreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
