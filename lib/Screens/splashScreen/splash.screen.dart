import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/colors.dart';
import '../homeScreen/home_screen.dart';
import '../onBoardingScreen/on.boarding.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future _initiateCache() async {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => OnBoardingScreen()),
            (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    sharedPref();
    super.initState();
  }

  sharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final user = prefs.getBool('user') ?? false;
    if (user) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
              (Route<dynamic> route) => false);
    }else{
      Timer(const Duration(seconds: 2), _initiateCache);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo/logo.png", width: 200,height: 200,)
          ],
        ),
      ),
    );
  }
}
