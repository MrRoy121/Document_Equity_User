import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/constants/Language.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../widgets/custom.snackbar.dart';
import '../SignupScreen/signup_screen.dart';
import '../homeScreen/home_screen.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _conuserPhone = TextEditingController();
  final _conuserPass = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    sharedPref();
  }
  sharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final user = prefs.getBool('user') ?? false;
    if (user) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
              (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.white,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.grey,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          toolbarHeight: 80.0,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(),
          centerTitle: true,
          elevation: 0,
          title: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 36,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  banglaleng ? "সাইন ইন" : "Sign In",
                  style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  banglaleng
                      ? "আপনাকে স্বাগতম! দয়া করে সাইন ইন করুন"
                      : "You Are Welcome! Please Sign In",
                  style: TextStyle(
                    fontSize: 14,
                    color: textcolorgreenlight,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 60,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          banglaleng ? "ফোন নম্বর" : "Phone Number",
                          style: TextStyle(
                            fontSize: 14,
                            color: textcolorgreenlight,
                            fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 5.0),
                        child: TextFormField(
                          controller: _conuserPhone,
                          style: TextStyle(
                            color: textcolorgreenlight,
                          ),keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only num
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                              borderSide:
                              BorderSide(color: textcolorgreenlight),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(15.0)),
                              borderSide:
                              BorderSide(color: textcolorgreenlight),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: textcolorgreenlight,
                            ),
                            hintText: banglaleng
                                ? "ফোন নম্বর প্রদান করুন"
                                : "Phone Number",
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: textcolorgreenlight),
                            filled: true,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          banglaleng ? "পাসওয়ার্ড" : "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                            color: textcolorgreenlight,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 5.0),
                        child: TextFormField(
                          controller: _conuserPass,
                          obscureText: !_passwordVisible,
                          style: TextStyle(
                            color: textcolorgreenlight,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                              borderSide:
                              BorderSide(color: textcolorgreenlight),
                            ),suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                              borderSide:
                              BorderSide(color: textcolorgreenlight),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: textcolorgreenlight,
                            ),
                            hintText: banglaleng
                                ? "পাসওয়ার্ড প্রদান করুন"
                                : "Password",
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: textcolorgreenlight),
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              banglaleng
                                  ? "পাসওয়ার্ড ভুলে গেছেন?"
                                  : "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Signin(context: context);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(15)),
                    height: 60,
                    child: Text(
                      banglaleng ? "সাইন ইন করুন" : "Sign In",
                      style: TextStyle(color: Colors.white,
                        fontSize: 16,
                        fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                        fontWeight: FontWeight.bold,),
                    ),
                    // Signin(context: context);
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Container(height: 1,color: textcolorgreenlight,)),
                      Text(banglaleng?"অথবা":"OR",
                          style: TextStyle(color: textcolorgreenlight,
                            fontSize: 14,
                            fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",)),
                      Expanded(child: Container(height: 1,color: textcolorgreenlight,)),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(
                      banglaleng
                          ? "একাউন্ট নেই? "
                          : "Don't Have An Account? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                        color: textcolorgreenlight,
                      ),
                      textAlign: TextAlign.center,
                    ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                        },
                        child: Text(
                          banglaleng
                              ? " রেজিস্ট্রেশন করুন?"
                              : " Register?",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Signin({required BuildContext context}) async {
    String phone = _conuserPhone.text;
    String pass = _conuserPass.text;

    final prefs = await SharedPreferences.getInstance();

    if (phone.isEmpty) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Phone is Required",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    }
    if (pass.isEmpty) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Pass is Required",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    }
    if (phone.length != 11) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Phone Number Invalid!",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    }else if (pass.length < 8) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Password Must Be 8 Digit or Character.",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    } else {
      FirebaseFirestore.instance
          .collection('Users')
          .where('Phone', isEqualTo: phone)
          .where('Password', isEqualTo: pass)
          .get()
          .then((QuerySnapshot querySnapshot) {
        if (querySnapshot.size == 0) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Phone And Password Didn't Match!!"),
          ));
        } else {
          for (var docResults in querySnapshot.docs) {
            prefs.setBool('user', true);
            prefs.setString("phone", docResults.get("Phone"));
            prefs.setString("pass", docResults.get("Password"));
            prefs.setString("name", docResults.get("Name"));
            prefs.setString("imagelink", docResults.get("ImageLink"));
            prefs.setString("address", docResults.get("Address"));
            prefs.setString("nationalid", docResults.get("National ID"));
            prefs.setString("birthdate", docResults.get("Birthdate"));
            prefs.setString("email",docResults.get("Email"));
            prefs.setString("uid", docResults.id);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Login Successful!"),
            ));
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => HomeScreen()),
                    (Route<dynamic> route) => false);
          }
        }
      });
    }
  }
}
