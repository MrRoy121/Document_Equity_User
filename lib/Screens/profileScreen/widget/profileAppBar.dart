import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';
import '../profile_edit_screen.dart';
import '../profile_screen.dart';

class ProfileAppbar extends StatefulWidget {
  bool amarprofile, main;
  void Function(int) changeloc;
  ProfileAppbar({super.key, required this.amarprofile, required this.main,  required this.changeloc, });
  @override
  State<ProfileAppbar> createState() => _ProfileAppbarState();
}

class _ProfileAppbarState extends State<ProfileAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: appbar,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: appbar,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        toolbarHeight: 80.0,
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
              InkWell(
                onTap: () {
                  if(widget.main){
                    Navigator.of(context).pop();
                  }else{
                    widget.changeloc(0);
                  }
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 32,
                ),
              ),
              Text(
                banglaleng ? "প্রোফাইল" : 'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                    fontWeight: FontWeight.bold),
              ),
              widget.amarprofile
                  ? InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileEditScreen()));
                },
                child: const Icon(
                  Icons.edit_outlined,
                  size: 36,
                ),
              )
                  : const SizedBox(width: 30,),
            ],
          ),
        ),
      );
  }
}
