import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/profileScreen/profile_screen.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/profileAppBar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/Language.dart';
import '../../constants/colors.dart';
import '../../widgets/custom.snackbar.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  String username = "N/A",
      phone = "N/A",
      uid = "N/A",
      nationalid = "N/A",
      address = "N/A",
      email = "N/A",
      imagelink = "N/A",
      pass = "N/A";
  var birthdate;
  final picker = ImagePicker();
  late File imageFile;
  late String fileName, imgFile = "";
  XFile? pickedImage;
  bool fetch = false, imsg = false;
  FirebaseStorage storage = FirebaseStorage.instance;
  final ccode = '+88';
  TextEditingController _conuserName = TextEditingController();
  TextEditingController _conuserPhone = TextEditingController();
  TextEditingController _conuserNational = TextEditingController();
  TextEditingController _conuserEmail = TextEditingController();
  TextEditingController _conuserAddress = TextEditingController();
  TextEditingController _conuserPass = TextEditingController();

  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();

    getprefs();
  }

  getprefs() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('name') ?? "N/A";
      phone = prefs.getString('phone') ?? "N/A";
      uid = prefs.getString('uid') ?? "";
      nationalid = prefs.getString('nationalid') ?? "N/A";
      address = prefs.getString('address') ?? "N/A";
      email = prefs.getString('email') ?? "N/A";
      imagelink = prefs.getString('imagelink') ?? "";
      if(prefs.getString('birthdate')!.length>5){
        birthdate = DateFormat("dd-MM-yyyy")
            .parse(prefs.getString('birthdate') ?? DateTime.now().toString());
      }
      if (imagelink.isNotEmpty) {
        fetch = true;
        getImage();
      }
      pass = prefs.getString('pass') ?? "N/A";

      _conuserName.text = username;
      _conuserPhone.text = phone;
      _conuserNational.text = nationalid;
      _conuserEmail.text = email;
      _conuserAddress.text = address;
      _conuserPass.text = pass;
    });
  }

  getImage() {
    storage
        .ref("Users/" + uid + "/primary.jpeg")
        .getDownloadURL()
        .then((value) {
      setState(() {
        imgFile = value.toString();
        fetch = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> selectImage() async {
      try {
        pickedImage =
            await picker.pickImage(source: ImageSource.gallery, maxWidth: 1920);
        fileName = path.basename(pickedImage!.path);
        imageFile = File(pickedImage!.path);
        imsg = true;
        setState(() {});
      } catch (err) {
        print(err);
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: ProfileAppbar(
          amarprofile: false,
          main: true,
          changeloc: (int) {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: appbar,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child: Column(
                children: [
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 1,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      imsg
                          ? ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(65), // Image radius
                          child: Image.file(imageFile, fit: BoxFit.cover,),
                        ),
                      )
                          :
                      !(imagelink.length >= 4)
                              ? const CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    "assets/logo/circle_avatar.png",
                                  ),
                                  radius: 65,
                                )
                              : CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    imagelink,
                                  ),
                                  radius: 65,
                                ),
                      InkWell(
                        onTap: () {
                          selectImage();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          padding: const EdgeInsets.all(5),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    username,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 1,
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
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
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      hintText: banglaleng ? "ইউজার নাম" : "User Name",
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
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
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
                  child: Text(
                    banglaleng ? "ইমেইল" : "Email",
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
                    controller: _conuserEmail,
                    style: TextStyle(
                      color: textcolorgreenlight,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      hintText:
                          banglaleng ? "ইমেইল প্রদান করুন" : "Provide Email",
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
                  child: Text(
                    banglaleng ? "জাতীয় পরিচয়পত্র নং" : "National ID",
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
                    controller: _conuserNational,
                    style: TextStyle(
                      color: textcolorgreenlight,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only num
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      hintText:
                          banglaleng ? "জাতীয় পরিচয়পত্র নং" : "National ID No",
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
                  child: Text(
                    banglaleng ? "জন্ম তারিখ" : "Date Of Birth",
                    style: TextStyle(
                      fontSize: 14,
                      color: textcolorgreenlight,
                      fontFamily: banglaleng ? "SutonnyMJ" : "Nunito",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    birthdate = await DatePicker.showSimpleDatePicker(
                      context,
                      initialDate: birthdate,
                      dateFormat: "dd/MM/yyyy",
                      locale: DateTimePickerLocale.en_us,
                      looping: true,
                    );
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin:
                        const EdgeInsets.only(top: 5.0, left: 20, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        border:
                            Border.all(width: 1, color: textcolorgreenlight)),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    child: Text(
                      birthdate != null
                          ? DateFormat('MM/dd/yyyy')
                              .format(birthdate)
                              .toString()
                          : "00/00/0000",
                      style: TextStyle(
                        fontSize: 16,
                        color: textcolorgreenlight,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    banglaleng ? "ঠিকানা" : "Address",
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
                    controller: _conuserAddress,
                    style: TextStyle(
                      color: textcolorgreenlight,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      hintText:
                          banglaleng ? "ঠিকানা প্রদান করুন" : "Provide Address",
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
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
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
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: textcolorgreenlight),
                      ),
                      hintText:
                          banglaleng ? "পাসওয়ার্ড প্রদান করুন" : "Password",
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: textcolorgreenlight),
                      filled: true,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
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
                      banglaleng ? "সংরক্ষন করুন" : "Save",
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Signin({required BuildContext context}) async {
    String phone = "+88${_conuserPhone.text}";

    final prefs = await SharedPreferences.getInstance();

    if (_conuserPhone.text.isEmpty ||
        _conuserAddress.text.isEmpty ||
        _conuserNational.text.isEmpty ||
        _conuserEmail.text.isEmpty ||
        _conuserName.text.isEmpty ||
        _conuserPass.text.isEmpty) {
      SnackUtil.showSnackBar(
        context: context,
        text: "All Fields Are Required",
        textColor: textcolorgreenlight,
        backgroundColor: Colors.red.shade200,
      );
    }
    if (phone.length == 11) {
      SnackUtil.showSnackBar(
        context: context,
        text: "Phone Number Invalid!",
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
    } else {
      if (imsg) {
        await storage
            .ref("Users/" + uid + "/primary.jpeg")
            .putFile(
                imageFile,
                SettableMetadata(customMetadata: {
                  'Full Name': username,
                }))
            .then((p0) {
          p0.ref.getDownloadURL().then((value) {
            FirebaseFirestore.instance.collection('Users').doc(uid).set({
              'Name': _conuserName.text,
              'ImageLink': value,
              'Phone': _conuserPhone.text,
              'Password': _conuserPass.text,
              'Address': _conuserAddress.text,
              'Birthdate': birthdate.toString(),
              'National ID': _conuserNational.text,
              'Email': _conuserEmail.text
            }).then((vue) {
              prefs.setBool('user', true);
              prefs.setString("phone", _conuserPhone.text);
              prefs.setString("pass", _conuserPass.text);
              prefs.setString("name", _conuserName.text);
              prefs.setString("imagelink", value);
              prefs.setString("address", _conuserAddress.text);
              prefs.setString("nationalid", _conuserNational.text);
              prefs.setString("birthdate", birthdate.toString());
              prefs.setString("email", _conuserEmail.text);
              prefs.setString("uid", uid);

              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("User Data Added Successfull!"),
              ));

              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const ProfileScreen()),
                  (Route<dynamic> route) => false);
            });
          });
        });
      } else {
        FirebaseFirestore.instance.collection('Users').doc(uid).set({
          'Name': _conuserName.text,
          'ImageLink': imagelink,
          'Phone': _conuserPhone.text,
          'Password': _conuserPass.text,
          'Address': _conuserAddress.text,
          'Birthdate': birthdate,
          'National ID': _conuserNational.text,
          'Email': _conuserEmail.text
        }).then((value) {
          prefs.setBool('user', true);
          prefs.setString("phone", _conuserPhone.text);
          prefs.setString("pass", _conuserPass.text);
          prefs.setString("name", _conuserName.text);
          prefs.setString("imagelink", imagelink);
          prefs.setString("address", _conuserAddress.text);
          prefs.setString("nationalid", _conuserNational.text);
          prefs.setString("birthdate", birthdate);
          prefs.setString("email", _conuserEmail.text);
          prefs.setString("uid", uid);

          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("User Data Added Successfull!"),
          ));

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
              (Route<dynamic> route) => false);
        });
      }
    }
  }
}
