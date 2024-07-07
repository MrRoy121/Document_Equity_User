import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/SignUpScreen/signup_screen.dart';
import 'package:document_equity_user/Screens/SigninScreen/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';

class OtpVarification extends StatefulWidget {
  String phone, name, pass;
  OtpVarification({super.key, required this.phone,required this.name, required this.pass});
  @override
  State<OtpVarification> createState() => _OtpVarificationState();
}

class _OtpVarificationState extends State<OtpVarification> {
  Timer? countdownTimer;
  Duration myDuration = Duration(seconds: 30);

  String verify = "";
  @override
  void initState() {
    super.initState();
    startTimer();
    initialize();
  }


  initialize() async {
  String p = "+88${widget.phone}";
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: p,
      verificationCompleted: (PhoneAuthCredential credential) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Phone Number is already Registered!!"),
        ));
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Code Sending Failed"),
        ));
      },
      codeSent: (String verificationId, int? resendToken) {
        verify = verificationId;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Code Sent"),
        ));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  void dispose() {
    countdownTimer?.cancel();
    super.dispose();
  }
  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if(seconds>0){
        myDuration = Duration(seconds: seconds);
      }

    });
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  var code = "";
  otpVeri() async {
    // try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verify, smsCode: code);
      await auth.signInWithCredential(credential);

      final prefs = await SharedPreferences.getInstance();
      String? uid = FirebaseAuth.instance.currentUser?.uid;
      FirebaseFirestore.instance.collection('Users').doc(uid).set({'Name': widget.name,
        'Birthdate': "", 'ImageLink': "", 'Phone': widget.phone, 'Password': widget.pass, 'Address': "", 'National ID': "", 'Email': ""}).then((value) {
        prefs.setBool('user', true);
        prefs.setString("phone", widget.phone);
        prefs.setString("pass", widget.pass);
        prefs.setString("name", widget.name);
        prefs.setString("imagelink", "");
        prefs.setString("birthdate", "");
        prefs.setString("address", "");
        prefs.setString("nationalid", "");
        prefs.setString("email", "");
        prefs.setString("uid", uid!);

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Register Successfull!"),
        ));

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => SigninScreen()),
                (Route<dynamic> route) => false);
      });

    // } catch (e) {print("Faer: $e");
    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //     content: Text("Code Didnt Matched"),
    //   ));
    // }
  }

  @override
  Widget build(BuildContext context) {
    // final defaultPinTheme = PinTheme(
    //   width: 56,
    //   height: 56,
    //   textStyle: const TextStyle(
    //       fontSize: 20,
    //       color: Color.fromRGBO(13, 26, 38, 1.0),
    //       fontWeight: FontWeight.w600),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    // );

    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds.remainder(30));
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            banglaleng ? "কোড যাচাই করুন" : "Verify Code",
            style: TextStyle(
              color: textcolorgreenlight,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              banglaleng?"অনুগ্রহ করে নম্বরটিতে আপনি যে OTP পেয়েছেন \nতা যাচাই করুন ${widget.phone}":'Please Verify The OTP That You Receive\nOn The Number ${widget.phone}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: textcolorgreenlight,),
            ),
          ),
          if (seconds.toString() == '01')
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                onPressed: () {
                  stopTimer();
                  Navigator.of(context).pop();
                },
                child: Text(
                  banglaleng?'পুনরায় কোড পাঠান':'Resend Code',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          else
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                banglaleng?'$seconds সেকেন্ড বাকি':'$seconds Seconds left.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: textcolorgreenlight,),
              ),
            ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Pinput(
              length: 6,
              showCursor: true,
              onChanged: (val) {
                setState(() {
                  code = val;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            margin: EdgeInsets.only(top: 10.0),
            width: 240,
            child: TextButton(
              child: Text(
                "Verify Code",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              onPressed: () => otpVeri(),
            ),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15.0)),
          ),
        ],
      ),
    );
  }
}
