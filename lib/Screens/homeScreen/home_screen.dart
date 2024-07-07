import 'package:document_equity_user/Screens/SigninScreen/signin_screen.dart';
import 'package:document_equity_user/Screens/homeScreen/widgets/menu_item_widgets.dart';
import 'package:document_equity_user/constants/Language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../PropertyScreen/property_screen.dart';
import '../calculator/calculator_screen.dart';
import '../dolilInfo/dolilinfo_screen.dart';
import '../profileScreen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String uid = "", name = "";



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: AppBar(
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  banglaleng ? "ডকুমেন্ট ইকুয়িটি" : 'Document Equity',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () async {

                    final prefs = await SharedPreferences.getInstance();

                    if(prefs.getBool('user') ?? false){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                      const ProfileScreen()));
                    }else{
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                       SigninScreen()));
                    }
                  },
                  child: const Icon(
                    Icons.account_circle_outlined,
                    size: 38,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  banglaleng ? "তথ্য সেবা" : 'Information Services',
                  style: TextStyle(
                      color: textcolorgreenlight,
                      fontSize: 18,
                      fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuItem(
                      asset: "assets/menuicons/menuicons1.png",
                      text: banglaleng
                          ? "রেজিস্ট্রেশন\nপ্রক্রিয়া"
                          : 'Registration\nProcess',
                      onclick: () {},
                    ),
                    MenuItem(
                      asset: "assets/menuicons/menuicons2.png",
                      text: banglaleng ? "দলিলের\nপ্রয়োজনীয় তথ্য" : 'Dolils\nRequired Information',
                      onclick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            const DolilinfoScreen()));},
                    ),
                    SizedBox(width:  MediaQuery.of(context).size.width-300,),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  banglaleng ? "ফিস ক্যালকুলেটর" : 'Fees Calculator',
                  style: TextStyle(
                      color: textcolorgreenlight,
                      fontSize: 18,
                      fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuItem(
                      asset: "assets/menuicons/menuicons3.png",
                      text: banglaleng
                          ? "বাজেট\nক্যালকুলেটর"
                          : 'Budget\nCalculator',
                      onclick: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            CalculatorScreen()));},
                    ),
                    MenuItem(
                      asset: "assets/menuicons/menuicons4.png",
                      text: banglaleng ? "উত্তরাধিকারী\nহিসাব" : 'Legacy\nAccounts',
                      onclick: () {},
                    ),
                    MenuItem(
                      asset: "assets/menuicons/menuicons5.png",
                      text: banglaleng ? "কড়া গন্ডা\nহিসাব" : 'Kora Gonda\nAccounts',
                      onclick: () {},
                    ),
                  ],
                ),const SizedBox(height: 15),
                Text(
                  banglaleng ? "জমি কেনা বেচা" : 'Property Buy Sale',
                  style: TextStyle(
                      color: textcolorgreenlight,
                      fontSize: 18,
                      fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuItem(
                      asset: "assets/menuicons/menuicons6.png",
                      text: banglaleng
                          ? "প্রপার্টি\nদেখুন"
                          : 'View\nProperty',
                      onclick: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            PropertyScreen()));

                      },
                    ),
                     SizedBox(width:  MediaQuery.of(context).size.width-300,),
                     SizedBox(width:  MediaQuery.of(context).size.width-300,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
