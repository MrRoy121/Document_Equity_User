import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:document_equity_user/Screens/SigninScreen/signin_screen.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/docAppBar.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/dolilAppBar.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/profileAppBar.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/profile_main.dart';
import 'package:document_equity_user/Screens/profileScreen/widget/profile_myprofile.dart';
import 'package:document_equity_user/helper/pdf_helper_danerghoshona.dart';
import 'package:document_equity_user/helper/pdf_helper_hebarghoshona.dart';
import 'package:document_equity_user/helper/pdf_helper_powerdeshi.dart';
import 'package:document_equity_user/helper/pdf_helper_safkobala.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../constants/filestaus.dart';
import '../../helper/pdf_helper_bainabatilnama.dart';
import '../../helper/pdf_helper_bainanama.dart';
import '../../helper/pdf_helper_powerbatilnama.dart';
import '../../helper/pdf_helper_powerbideshi.dart';
import '../../models/Files.dart';
import '../../models/Files14.dart';
import '../../models/Files15.dart';
import '../../models/Files16.dart';
import '../../models/Files17.dart';
import '../../models/Files8.dart';
import '../../models/Files9.dart';
import '../../models/generalinfoModel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool fetch = false,
      _amarprofile = false,
      _mains = true,
      _amardolil = false,
      _amardoc = false;

  String username = "N/A",
      phone = "N/A",
      uid = "N/A",
      birthdate = "N/A",
      nationalid = "N/A",
      address = "N/A",
      email = "N/A",
      imagelink = "N/A",
      pass = "N/A";
  @override
  void initState() {
    // TODO: implement initState
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
      birthdate = prefs.getString('birthdate') ?? "N/A";
      imagelink = prefs.getString('imagelink') ?? "";
      if (imagelink.isNotEmpty) {
        fetch = true;
      }
      pass = prefs.getString('pass') ?? "N/A";
    });
  }

  @override
  Widget build(BuildContext context) {
    logout() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('user', false);
      prefs.setString("email", '');
      prefs.setString("phone", '');
      prefs.setString("pass", '');
      prefs.setString("name", '');
      prefs.setString("uid", '');
      prefs.setString("imagelink", '');
      prefs.setString("nationalid", '');
      prefs.setString("address", '');
      prefs.setString("email", '');
      prefs.setString("birthdate", '');
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => SigninScreen()),
          (Route<dynamic> route) => false);
    }

    changeloc(int aa) {
      setState(() {
        if (aa == 0) {
          _mains = true;
          _amarprofile = false;
          _amardolil = false;
          _amardoc = false;
        } else if (aa == 1) {
          _mains = false;
          _amarprofile = true;
          _amardolil = false;
          _amardoc = false;
        } else if (aa == 2) {
          _mains = false;
          _amarprofile = false;
          _amardolil = true;
          _amardoc = false;
        } else if (aa == 3) {
          _mains = false;
          _amarprofile = false;
          _amardolil = false;
          _amardoc = true;
        }
      });
    }

    Future getPdfAndUpload() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        withData: true,
        allowedExtensions: ['jpg', 'pdf', 'doc', 'png'],
      );
      if (result != null) {
        Uint8List? fileBytes = result.files.first.bytes;
        String fileName = result.files.first.name;
        bool val = false;
        if(result.files.first.extension=="jpg"||result.files.first.extension=="png"){
          val = true;
        }
        await FirebaseStorage.instance
            .ref("Documents/$uid/")
            .putData(fileBytes!)
            .then((p0) {
          p0.ref.getDownloadURL().then((value) {
            FirebaseFirestore.instance.collection('Documents_Links').add({
              'Client ID': uid,
              'DocLink': value,
              'Image':val,
              'Filename': fileName,
            }).then((vue) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("File Uploaded Successfully!"),
              ));
            });
          });
        });
      }
    }

    changeusr8(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files8 f8;
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],birthcertificatenumber: map["Birth Certificate Number"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              tin: map["Tin"],birthcertificatenumber: map["Birth Certificate Number"],
              passportnumber: map["Passport Number"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
            querySnapshot.data()! as Map<String, dynamic>;
        f8 = Files8.fromMap(image);
        PdfHelper_bainabatilnama_shadharonproof.generate(
            f8, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    changeusr9(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files9 f9;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],birthcertificatenumber: map["Birth Certificate Number"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],birthcertificatenumber: map["Birth Certificate Number"],
              formtype: map["Files Type"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
            querySnapshot.data()! as Map<String, dynamic>;
        f9 = Files9.fromMap(image);
        PdfHelper_bainanama_shadharonproof.generate(
            f9, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    changeusr12(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files14 f14;

      FirebaseFirestore.instance
          .collection('Parties').where("Files ID", isEqualTo: ss.fileid).where("Party", isEqualTo: "1st Party").get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],birthcertificatenumber: map["Birth Certificate Number"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],birthcertificatenumber: map["Birth Certificate Number"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
            querySnapshot.data()! as Map<String, dynamic>;
        f14 = Files14.fromMap(image);
        PdfHelper_danerghoshona_shadharonproof.generate(
            f14, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    changeusr13(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files14 f14;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],birthcertificatenumber: map["Birth Certificate Number"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
            querySnapshot.data()! as Map<String, dynamic>;
        f14 = Files14.fromMap(image);
        PdfHelper_hebarghoshona_shadharonproof.generate(
            f14, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    changeusr14(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files14 f14;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
            querySnapshot.data()! as Map<String, dynamic>;
        f14 = Files14.fromMap(image);
        PdfHelper_safkobala_shadharonproof.generate(
            f14, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    changeusr15(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files15 f15;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],birthcertificatenumber: map["Birth Certificate Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
        querySnapshot.data()! as Map<String, dynamic>;
        f15 = Files15.fromMap(image);
        PdfHelper_powerdeshi_shadharonproof.generate(
            f15, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }
    changeusr16(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files16 f16;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],birthcertificatenumber: map["Birth Certificate Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
        querySnapshot.data()! as Map<String, dynamic>;
        f16 = Files16.fromMap(image);
        PdfHelper_powerbideshi_shadharonproof.generate(
            f16, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }
    changeusr17(Files ss, BuildContext context) {
      List<GeneralModel> generalInfo1stparty = [];
      List<GeneralModel> generalInfo2ndparty = [];
      late Files17 f17;

      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "1st Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo1stparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],birthcertificatenumber: map["Birth Certificate Number"],
              husbandname: map["Husband Name"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });
      FirebaseFirestore.instance
          .collection('Parties')
          .where("Files ID", isEqualTo: ss.fileid)
          .where("Party", isEqualTo: "2nd Party")
          .get()
          .then((QuerySnapshot querySnapshot) async {
        for (var map in querySnapshot.docs) {
          generalInfo2ndparty.add(GeneralModel(
              serial: map["Serial"],
              name: map["Name"],
              formid: map["Files ID"],
              formtype: map["Files Type"],
              clientid: map["Client ID"],
              party: map["Party"],
              fathername: map["Father Name"],
              husbandname: map["Husband Name"],birthcertificatenumber: map["Birth Certificate Number"],
              mothername: map["Mother Name"],
              dateofbirth: map["Date of Birth"],
              tin: map["Tin"],
              passportnumber: map["Passport Number"],
              religion: map["Religion"],
              ocupassion: map["Occupation"],
              nationality: map["Nationality"],
              nationalidnumber: map["National ID Number"],
              parmavillage: map["Permanent Village"],
              parmapost: map["Permanent Post Office"],
              parmathana: map["Permanent Thana"],
              parmaunion: map["Permanent Union"],
              parmadistrict: map["Permanent District"],
              presentaddress: map["Present Address"],
              presentvillage: map["Present Village"],
              presentpost: map["Present Post Office"],
              presentthana: map["Present Thana"],
              presentunion: map["Present Union"],
              presentdistrict: map["Present District"]));
        }
      });

      FirebaseFirestore.instance
          .collection('Files')
          .doc(ss.fileid)
          .get()
          .then((DocumentSnapshot querySnapshot) async {
        Map<String, dynamic> image =
        querySnapshot.data()! as Map<String, dynamic>;
        f17 = Files17.fromMap(image);
        PdfHelper_powerbatilnama_shadharonproof.generate(
            f17, generalInfo1stparty, generalInfo2ndparty, context);
      });
    }

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _mains || _amarprofile
          ? PreferredSize(
              preferredSize: const Size.fromHeight(80.0),
              child: ProfileAppbar(
                amarprofile: _amarprofile,
                main: _mains,
                changeloc: changeloc,
              ),
            )
          : _amardolil
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(120.0),
                  child: DolilAppbar(),
                )
              : _amardoc
                  ? PreferredSize(
                      preferredSize: const Size.fromHeight(120.0),
                      child: DocAppbar(),
                    )
                  : const PreferredSize(
                      preferredSize: Size.fromHeight(0.0), child: SizedBox()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _mains || _amarprofile
                ? Container(
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
                        !(fetch)
                            ? const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  "assets/logo/circle_avatar.png",
                                ),
                                radius: 65,
                              )
                            : CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: NetworkImage(
                                  imagelink,
                                ),
                                radius: 65,
                              ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          username,
                          style: const TextStyle(
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
                  )
                : SizedBox(),
            _mains || _amarprofile
                ? const SizedBox(
                    height: 45,
                  )
                : SizedBox(),
            _amardolil || _amardoc
                ? Container(
                    height: 70,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: appbar,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25))),
                  )
                : SizedBox(),
            _mains
                ? ProfileMain(
                    logout: logout,
                    changeloc: changeloc,
                  )
                : _amarprofile
                    ? ProfileMyProfile(
                        pass: pass,
                        phone: phone,
                        address: address,
                        email: email,
                        nationalid: nationalid,
                        birthdate: birthdate,
                      )
                    : _amardolil
                        ? SizedBox(
                            width: double.infinity,
                            height: height - 200,
                            child: SingleChildScrollView(
                                child: Column(
                              children: [
                                StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('Files')
                                      .where("Client ID", isEqualTo: uid)
                                      .snapshots(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<QuerySnapshot> snapshot) {
                                    if (snapshot.hasError) {
                                      return const Text('Something went wrong');
                                    }
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    }

                                    if (snapshot.data!.docs.isNotEmpty) {
                                      int index = -1;

                                      return Container(
                                        height: height / 1.35,
                                        child: ListView(
                                            children: snapshot.data!.docs.map(
                                                (DocumentSnapshot document) {
                                          Map<String, dynamic> image = document
                                              .data()! as Map<String, dynamic>;
                                          Files ss = Files.fromMap(image);
                                          index++;
                                          return Container(
                                            height: 200,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 8),
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "ফাইল নংঃ ",
                                                      style: TextStyle(
                                                        color: textcolorgreen,
                                                        fontSize: 20,
                                                        fontFamily: "SutonnyMJ",
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 15),
                                                      child: Text(
                                                        (index + 1).toString(),
                                                        style: TextStyle(
                                                            color:
                                                                textcolorgreen,
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "SutonnyMJ",
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "দলিলের প্রকারঃ ",
                                                      style: TextStyle(
                                                        color: textcolorgreen,
                                                        fontSize: 20,
                                                        fontFamily: "SutonnyMJ",
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        ss.filetype,
                                                        style: TextStyle(
                                                          height: 1,
                                                          color: textcolorgreen,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "স্ট্যাটাসঃ ",
                                                      style: TextStyle(
                                                        color: textcolorgreen,
                                                        fontSize: 20,
                                                        fontFamily: "SutonnyMJ",
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 15),
                                                      child: Text(
                                                        filestatusbangla[
                                                            ss.status - 1],
                                                        style: TextStyle(
                                                            color: (ss.status ==
                                                                    2)
                                                                ? Colors.red
                                                                : textcolorgreen,
                                                            fontSize: 22,
                                                            fontFamily:
                                                                "SutonnyMJ",
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Expanded(
                                                    child: SizedBox()),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    // InkWell(
                                                    //   onTap: () {},
                                                    //   child: Container(
                                                    //     padding:
                                                    //         const EdgeInsets
                                                    //             .all(10),
                                                    //     decoration: BoxDecoration(
                                                    //         color: Colors.amber,
                                                    //         borderRadius:
                                                    //             BorderRadius
                                                    //                 .circular(
                                                    //                     50)),
                                                    //     child: const Row(
                                                    //       children: [
                                                    //         SizedBox(
                                                    //           width: 5,
                                                    //         ),
                                                    //         Icon(
                                                    //           Icons
                                                    //               .remove_red_eye,
                                                    //           color:
                                                    //               Colors.white,
                                                    //         ),
                                                    //         Text(
                                                    //           "  দেখুন",
                                                    //           style: TextStyle(
                                                    //             color: Colors
                                                    //                 .white,
                                                    //             fontSize: 18,
                                                    //           ),
                                                    //         ),
                                                    //         SizedBox(
                                                    //           width: 5,
                                                    //         ),
                                                    //       ],
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                    // const SizedBox(
                                                    //   width: 10,
                                                    // ),
                                                    InkWell(
                                                      onTap: () async {
                                                        var status =
                                                            await Permission
                                                                .storage.status;
                                                        if (!status.isGranted) {
                                                          await Permission
                                                              .storage
                                                              .request();
                                                        }
                                                        if (ss.lockunlock ==
                                                            2) {
                                                          if (ss.filetype ==
                                                              "বায়না বাতিল নামা") {
                                                            changeusr8(
                                                                ss, context);
                                                          } else if (ss
                                                                  .filetype ==
                                                              "বায়নাপত্র") {
                                                            changeusr9(
                                                                ss, context);
                                                          } else if (ss
                                                                  .filetype ==
                                                              "দানের ঘোষণা পত্র") {
                                                            changeusr12(
                                                                ss, context);
                                                          } else if (ss
                                                                  .filetype ==
                                                              "সাফ কবালা") {
                                                            changeusr14(
                                                                ss, context);
                                                          } else if (ss
                                                                  .filetype ==
                                                              "হেবার ঘোষণাপত্র") {
                                                            changeusr13(
                                                                ss, context);
                                                          } else if (ss
                                                                  .filetype ==
                                                              "অপ্রত্যাহারযোগ্য পাওয়ার অব অ্যাটর্নি (দেশী)") {
                                                            changeusr15(
                                                                ss, context);
                                                          } else if (ss
                                                              .filetype ==
                                                              "অপ্রত্যাহার যোগ্য পাওয়ার অব অ্যাটর্নি (বিদেশী)") {
                                                            changeusr16(
                                                                ss, context);
                                                          } else if (ss
                                                              .filetype ==
                                                              "পাওয়ার অব অ্যাটর্নি বাতিল নামা") {
                                                            changeusr17(
                                                                ss, context);
                                                          }
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  const SnackBar(
                                                            content: Text(
                                                                "ডাউনলোড করতে পেমেন্ট সম্পন্ন করুন"),
                                                          ));
                                                        }
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        decoration: BoxDecoration(
                                                            color: Colors.green,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50)),
                                                        child: Row(
                                                          children: [
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Icon(
                                                              ss.lockunlock == 2
                                                                  ? Icons
                                                                      .save_alt_rounded
                                                                  : Icons.lock,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            const Text(
                                                              "  ডাউনলোড",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        }).toList()),
                                      );
                                    } else {
                                      return const SizedBox();
                                    }
                                  },
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            )))
                        : _amardoc
                            ? Container(
                                width: double.infinity,
                                height: height - 200,
                                child: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        getPdfAndUpload();
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 65,
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 20, top: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 5,
                                            ),
                                          ],
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.blueAccent,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "আপলোড করুন",
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontSize: 18,
                                                  fontFamily: "Nunito",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    StreamBuilder<QuerySnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('Documents_Links')
                                          .where("Client ID", isEqualTo: uid)
                                          .snapshots(),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<QuerySnapshot>
                                              snapshot) {
                                        if (snapshot.hasError) {
                                          return const Text(
                                              'Something went wrong');
                                        }
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return const Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }

                                        if (snapshot.data!.docs.isNotEmpty) {
                                          return MediaQuery.removePadding(
                                              context: context,
                                              removeTop: true,
                                              child: GridView.builder(
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2),
                                                itemCount:
                                                    snapshot.data!.docs.length,
                                                shrinkWrap: true,
                                                itemBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        GestureDetector(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.4),
                                                          spreadRadius: 2,
                                                          blurRadius: 7,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          height:150,width: double.infinity,
                                                          child:  snapshot.data!
                                                              .docs[
                                                          index]
                                                          ['Image']?Image.network(
                                                              snapshot.data!
                                                                          .docs[
                                                                      index]
                                                                  ['DocLink'],width: double.infinity,):Image.asset(
                                                            "assets/logo/pdf.png",width: double.infinity,),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20,
                                                                  right: 20,
                                                                  top: 10,
                                                                  bottom: 10),
                                                          child: Text(
                                                            snapshot.data!
                                                                    .docs[index]
                                                                ['Filename'],
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'inter'),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ));
                                        } else {
                                          return const SizedBox();
                                        }
                                      },
                                    ),
                                    const SizedBox(
                                      height: 100,
                                    ),
                                  ],
                                )))
                            : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
