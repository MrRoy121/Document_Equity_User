import 'package:flutter/material.dart';

import '../../../constants/Language.dart';
import '../../../constants/colors.dart';

class ProfileMyProfile extends StatefulWidget {

  String? phone, nationalid, address, email, pass, birthdate;
  ProfileMyProfile({super.key, required this.pass, required this.phone, required this.birthdate, required this.nationalid, required this.address, required this.email,});

  @override
  State<ProfileMyProfile> createState() => _ProfileMyProfileState();
}

class _ProfileMyProfileState extends State<ProfileMyProfile> {
  bool _show = false;
  String hiddenpass="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i = 0; i < widget.pass!.length; i++){
      hiddenpass = "$hiddenpass*";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              banglaleng ? "ফোন নাম্বার" : "Phone Number",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.phone!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: textcolorgreenlight),
            ),
            Container(
              width: double.infinity,
              color: textcolorgrey,
              height: 1,
              margin: EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              banglaleng ? "ইমেইল" : "Email",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.email!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: textcolorgreenlight),
            ),
            Container(
              width: double.infinity,
              color: textcolorgrey,
              height: 1,
              margin: EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              banglaleng
                  ? "জাতীয় পরিচয়পত্র নং"
                  : "National ID No",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.nationalid!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: textcolorgreenlight),
            ),
            Container(
              width: double.infinity,
              color: textcolorgrey,
              height: 1,
              margin: EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              banglaleng
                  ? "জন্ম তারিখ"
                  : "Date Of Birth",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.birthdate!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: textcolorgreenlight),
            ),
            Container(
              width: double.infinity,
              color: textcolorgrey,
              height: 1,
              margin: EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              banglaleng ? "পাসওয়ার্ড" : "Password",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 _show?widget.pass!:hiddenpass!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textcolorgreenlight),
                ),
                IconButton(onPressed: (){
                  setState(() {
                    if(_show){
                    _show = false;
                    }else{
                      _show = true;
                    }
                  });
                }, icon: _show? Icon(Icons.visibility,color: textcolorgreenlight,): Icon(Icons.visibility_off,color: textcolorgreenlight,),),
              ],
            ),
            Container(
              width: double.infinity,
              color: textcolorgrey,
              height: 1,
              margin: EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              banglaleng ? "ঠিকানা" : "Address",
              style:
              TextStyle(fontSize: 14, color: textcolorgrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.address!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: textcolorgreenlight),
            ),
          ],
        ),
      ),
    );
  }
}
