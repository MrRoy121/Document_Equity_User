import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../models/boardingModel.dart';
import '../homeScreen/home_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final List<OnBoardingModel> cards = [
    OnBoardingModel(
      image: "assets/logo/boarding1.png",
      title: "The best holidays start here!",
      bgColor: Colors.white,
    ),
    OnBoardingModel(
      image: "assets/logo/boarding2.png",
      title: "Feel the real experience.",
      bgColor: Colors.white,
    ),
    OnBoardingModel(
      image: "assets/logo/boarding3.png",
      title: "Stay once, carry memories forever",
      textColor: Colors.white,
    ),
  ];

  List<Color> get colors => cards.map((p) => p.bgColor).toList();

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 10.0,
              ),
              child: Image.asset(
                "assets/logo/boarding1.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                banglaleng
                    ? "ডকুমেন্ট ইকুয়িটি - তে আপনাকে স্বাগতম"
                    : "Welcome To Document Equity",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textcolorgreen,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                banglaleng
                    ? 'অনলাইনে দলিল রেজিস্ট্রেশন সম্পর্কিত তথ্যসেবা প্রদানের মাধ্যমে সাধারণ জনগনকে সহায়তা করার উদ্দ্যেশ্যে এই প্ল্যাটফর্ম প্রস্তুত করা হয়েছে'
                    : "This platform is designed to assist the general public by providing online document registration related information services.",
                textAlign: TextAlign.center,
                style: TextStyle(color: textcolorgreenlight),
              ),
            ),
          ],
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 10.0,
              ),
              child: Image.asset(
                "assets/logo/boarding2.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                banglaleng ? "দলিল তৈরি করুন" : "Create Dolil",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textcolorgreen,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                banglaleng
                    ? 'আমাদের অ্যাপটির মাধ্যমে মাত্র কয়েকটি ধাপে তথ্য দিয়ে আপনার দলিল প্রস্তুত করে নিতে পারবেন'
                    : "Make your Dolil with just few steps by our Application.",
                textAlign: TextAlign.center,
                style: TextStyle(color: textcolorgreenlight),
              ),
            ),
          ],
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45.0,
                vertical: 10.0,
              ),
              child: Image.asset(
                "assets/logo/boarding3.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                banglaleng ? "প্রোফাইল" : "Profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textcolorgreen,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                banglaleng
                    ? 'খুব সহজে আপনার প্রোফাইল তৈরি করুন, তৈরিকৃত দলিল জমা রাখুন অথবা ডাউনলোড করুন'
                    : "Easily create your profile, save or download created documents.",
                textAlign: TextAlign.center,
                style: TextStyle(color: textcolorgreenlight),
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  SizedBox _nextButton({void Function(int)? setIndex}) {
    return SizedBox(
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          borderRadius: signinButtonBorderRadius,
          onTap: () {
            if (setIndex != null) {
              if (index == 2) {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    HomeScreen()), (Route<dynamic> route) => false);
              } else {
                index = index + 1;
                setIndex(index);
              }
            }
          },
          child: const Text(
            'Next',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          borderRadius: defaultSkipButtonBorderRadius,
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                HomeScreen()), (Route<dynamic> route) => false);
          },
          child: const Padding(
            padding: defaultSkipButtonPadding,
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _skipButton(setIndex: setIndex),
                  Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: CustomIndicator(
                      netDragPercent: dragDistance,
                      pagesLength: pagesLength,
                      indicator: Indicator(
                        activeIndicator: const ActiveIndicator(
                          color: Colors.blueAccent,
                        ),
                        closedIndicator:
                            const ClosedIndicator(color: Colors.blueAccent),
                        indicatorDesign: IndicatorDesign.polygon(
                          polygonDesign: PolygonDesign(
                            polygon: DesignType.polygon_circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  _nextButton(setIndex: setIndex)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
