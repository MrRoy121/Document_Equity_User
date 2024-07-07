import 'package:document_equity_user/Screens/profileScreen/widget/profile_button.dart';
import 'package:flutter/material.dart';

import '../../../constants/Language.dart';

class ProfileMain extends StatefulWidget {
  void Function() logout;
  void Function(int) changeloc;
  ProfileMain({super.key, required this.changeloc, required this.logout});

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileButton(
          onclick: () {widget.changeloc(1);
          },
          name: banglaleng ? "আমার প্রোফাইল" : 'My Profile',
          icon: const Icon(
            Icons.person,
            color: Colors.green,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ProfileButton(
          onclick: () {
            widget.changeloc(2);
          },
          name: banglaleng ? "আমার দলিল সমূহ" : 'My Dolils',
          icon: const Icon(
            Icons.assignment_outlined,
            color: Colors.yellow,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ProfileButton(
          onclick: () {
            widget.changeloc(3);},
          name: banglaleng ? "আমার ডকুমেন্টস" : 'My Documents',
          icon: const Icon(
            Icons.assignment_add,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(
          height: 130,
        ),
        InkWell(
          onTap: () {
            widget.logout();
          },
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Text(
              banglaleng ? "লগ আউট করুন" : "Logout",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
