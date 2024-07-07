import 'package:flutter/material.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';

class ProfileButton extends StatelessWidget {
  String name;
  Icon icon;
  void Function() onclick;
  ProfileButton({super.key, required this.onclick, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
          width: double.infinity,
          height: 65,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 50,),
              Text(
                name,
                style: TextStyle(
                    color: textcolorgreenlight,
                    fontSize: 18,
                    fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 70,),
            ],
          ),
        ),
    );
  }
}
