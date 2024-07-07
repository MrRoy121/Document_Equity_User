import 'package:document_equity_user/constants/Language.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../widgets/custom.snackbar.dart';
import '../SigninScreen/signin_screen.dart';
import 'otpVarification.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final ccode = '+88';
  final _conuserName = TextEditingController();
  final _conuserPhone = TextEditingController();
  final _conuserPass = TextEditingController();
  final _conuserConPass = TextEditingController();
  String phone = "";

  bool _passwordVisible = false, _conpasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;_conpasswordVisible = false;
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
                  banglaleng ? "রেজিস্ট্রেশন করুন" : "Registration",
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
                      ? "আপনাকে স্বাগতম! একাউন্ট রেজিস্ট্রেশন করুন"
                      : "You Are Welcome! Account Registration",
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
                          banglaleng ? "নাম" : "Name",
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
                          controller: _conuserName,
                          style: TextStyle(
                            color: textcolorgreenlight,
                          ),
                          keyboardType: TextInputType.name,
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
                              Icons.person,
                              color: textcolorgreenlight,
                            ),
                            hintText: banglaleng
                                ? "ইউজার নাম"
                                : "User Name",
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
                          ),
                          keyboardType: TextInputType.number,
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
                                ? "ফোন নম্বর Ex:(01*********)"
                                : "Phone Number Ex:(01*********)",
                            isDense: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: textcolorgreenlight),
                            filled: true,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              banglaleng ? "পাসওয়ার্ড" : "Password",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                                color: textcolorgreenlight,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              banglaleng ? "কমপক্ষে ৮ সংখ্যা" : "Minimum 8 Digits",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                                color: Colors.grey.withOpacity(0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
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
                            suffixIcon: IconButton(
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
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: textcolorgreenlight),
                            filled: true,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              banglaleng ? "পাসওয়ার্ড নিশ্চিত করুন" : "Confirm Password",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                                color: textcolorgreenlight,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              banglaleng ? "কমপক্ষে ৮ সংখ্যা" : "Minimum 8 Digits",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                                color: Colors.grey.withOpacity(0.7),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        margin: const EdgeInsets.only(top: 5.0),
                        child: TextFormField(
                          controller: _conuserConPass,
                          obscureText: !_conpasswordVisible,
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
                                ? "পাসওয়ার্ড নিশ্চিত করুন"
                                : "Confirm Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _conpasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _conpasswordVisible = !_conpasswordVisible;
                                });
                              },
                            ),
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
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    height: 60,
                    child: Text(
                      banglaleng ? "রেজিস্ট্রেশন" : "Registration",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Signin(context: context);
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: textcolorgreenlight,
                      )),
                      Text(banglaleng ? "অথবা" : "OR",
                          style: TextStyle(
                            color: textcolorgreenlight,
                            fontSize: 14,
                            fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                          )),
                      Expanded(
                          child: Container(
                        height: 1,
                        color: textcolorgreenlight,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        banglaleng
                            ? "একাউন্ট আছে?? "
                            : "Have An Account? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                          color: textcolorgreenlight,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                              builder: (context) => SigninScreen()), (Route<dynamic> route) => false);
                        },
                        child: Text(
                          banglaleng ? " সাইন ইন করুন?" : " Sign In?",
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
    String conpass = _conuserConPass.text;
    String nam = _conuserName.text;
    if (phone.isEmpty || nam.isEmpty || pass.isEmpty || conpass.isEmpty) {
      SnackUtil.showSnackBar(
        context: context,
        text: "All Field is Required",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    } else if (pass.length < 8) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Password Must Be 6 Digit or Character.",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    } else if (pass != conpass) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Both Password Should Match.",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    } else {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => OtpVarification(phone: phone,name: nam,pass: pass,)));
    }
  }
}
