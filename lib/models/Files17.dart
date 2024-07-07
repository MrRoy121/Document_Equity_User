import 'package:cloud_firestore/cloud_firestore.dart';

import 'generalinfoModel.dart';

class Files17 {
  double budget;
  String fileid, clientid, clientname, filetype;
  int status,lockunlock;
  Timestamp date;
  List<dynamic> sakkhi = [];
  List<dynamic> chowhada = [];
  String descriptionone,
      tofshildistrict1,
      tofshilThana2,
      tofshilupozila3,
      tofshilmouja4,
      tofshiljlnoSA5,
      tofshiljaharBs6,
      bhumioffice,
      tofshilbiboron,
      tofshilmotMouaji;

  Files17(
      {required this.fileid,
      required this.clientid,
      required this.clientname,
      required this.filetype,
      required this.budget,required this.lockunlock,
        required this.status,
        required this.date,
        required this.sakkhi,
      required this.descriptionone,
      required this.tofshildistrict1,
      required this.tofshilThana2,
      required this.tofshilupozila3,
        required this.bhumioffice,
      required this.tofshilmouja4,
      required this.tofshiljlnoSA5,
      required this.tofshiljaharBs6,
      required this.chowhada,
      required this.tofshilbiboron,
      required this.tofshilmotMouaji});

  Map<String, dynamic> toMap() {
    return {
      'Files ID': fileid,
      'Client ID': clientid,
      'Client Name': clientname,
      'Description One': descriptionone,
      'Status': status,
      'Budget': budget,
      'Date': date,'Sakkhi': sakkhi,
      'Files Type': filetype,
      'Registry Office Naam': bhumioffice,
      'Tofshil District 1': tofshildistrict1,
      'Tofshil Thana 2': tofshilThana2,
      'Tofshil Upzila 3': tofshilupozila3,
      'Tofshil Mouja 4': tofshilmouja4,
      'Tofshil JLNO 5': tofshiljlnoSA5,
      'LockUnlock':lockunlock,
      'Tofshil Jahar BS 6': tofshiljaharBs6,
      'Tofshil Bornona': tofshilbiboron,
      'Tofshil Namzari Khotian No 8': tofshilmotMouaji,
      'Tofshil Jahar BSDP 9': chowhada,
    };
  }

  Files17.fromMap(Map<String, dynamic> maap)
      : fileid = maap['Files ID'],
        clientid = maap['Client ID'],
        clientname = maap['Client Name'],
        descriptionone = maap['Description One'],
        status = maap['Status'],
        budget = maap['Budget'],
        date = maap['Date'],
        sakkhi = maap['Sakkhi'],
  lockunlock = maap["LockUnlock"],
        filetype = maap['Files Type'],
        bhumioffice = maap['Registry Office Naam'],
        tofshildistrict1 = maap['Tofshil District 1'],
        tofshilThana2 = maap['Tofshil Thana 2'],
        tofshilupozila3 = maap['Tofshil Upzila 3'],
        tofshilmouja4 = maap['Tofshil Mouja 4'],
        tofshiljlnoSA5 = maap['Tofshil JLNO 5'],
        tofshiljaharBs6 = maap['Tofshil Jahar BS 6'],
        tofshilbiboron = maap['Tofshil Bornona'],
        chowhada = maap['Tofshil Chouhadda'],
        tofshilmotMouaji = maap['Tofshil Mot Mouaji'];
}
