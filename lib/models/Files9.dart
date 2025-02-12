import 'package:cloud_firestore/cloud_firestore.dart';

class Files9 {
  double budget;
  String fileid, clientid, clientname, filetype;
  int status,lockunlock;
  Timestamp date;
  List<dynamic> sakkhi = [];
  String descriptionone,
      mullo,
      baina,
      baki,
      descriptiontwo,
      tofshildistrict1,
      tofshilThana2,
      tofshilupozila3,
      tofshilmouja4,
      tofshiljlnoSA5,
      tofshiljaharBs6,
      tofshilSAkhotianNo7,
      tofshilNamzariKhotianNo8,
      tofshiljaharBSBujaritokhotiannumber9,
      tofshiljaharBSDP10,
      tofshilAdaagNo12,
      tofshiljaharBs13,
      tofshilMouaji14,
      tofshilchouhaddauttor,
      tofshilchouhaddadokshin,
      tofshilchouhaddapurba,
      tofshilchouhaddaposchim,tofshiljaharBSchapa11,
      bhumioffice,
      consonaktokarinaam,
      consonaktokaripitarnaam,
      consonaktokarimatarnaam,
      consonaktokarithikana;

  Files9(
      {required this.fileid,
      required this.clientid,
      required this.clientname,
      required this.filetype,
      required this.mullo,
      required this.baina,
      required this.baki,
      required this.budget,
      required this.status,required this.lockunlock,
      required this.date,
        required this.tofshiljaharBSchapa11,
      required this.consonaktokarinaam,
      required this.consonaktokaripitarnaam,
      required this.consonaktokarithikana,
      required this.consonaktokarimatarnaam,
      required this.descriptionone,
      required this.descriptiontwo,
      required this.tofshildistrict1,
        required this.bhumioffice,
      required this.tofshilThana2,
      required this.tofshilupozila3,
      required this.tofshilmouja4,
      required this.tofshiljlnoSA5,
      required this.tofshiljaharBs6,
      required this.tofshilSAkhotianNo7,
      required this.tofshilNamzariKhotianNo8,
      required this.tofshiljaharBSBujaritokhotiannumber9,
      required this.tofshiljaharBSDP10,
      required this.tofshilAdaagNo12,
      required this.tofshiljaharBs13,
      required this.tofshilMouaji14,
      required this.tofshilchouhaddauttor,
      required this.tofshilchouhaddadokshin,
      required this.tofshilchouhaddapurba,
      required this.tofshilchouhaddaposchim});

  Map<String, dynamic> toMap() {
    return {
      'Files ID': fileid,
      'Client ID': clientid,
      'Client Name': clientname,
      'Description One': descriptionone,
      'Status': status,
      'Budget': budget,
      'Date': date,
      'Files Type': filetype,
      'Description Two': descriptiontwo,
      'Mullo': mullo,
      'Baina': baina,
      'Registry Office Naam': bhumioffice,
      'Baki': baki,
      'Sakkhi': sakkhi,
      'Sonaktokarir Naam': consonaktokarinaam,
      'Sonaktokarir Pitar Naam': consonaktokaripitarnaam,
      'Sonaktokarir Matar Naam': consonaktokarimatarnaam,
      'Sonaktokarir Thikana': consonaktokarithikana,
      'Tofshil District 1': tofshildistrict1,
      'Tofshil Thana 2': tofshilThana2,
      'Tofshil Upzila 3': tofshilupozila3,
      'Tofshil Mouja 4': tofshilmouja4,
      'Tofshil JLNO 5': tofshiljlnoSA5,
      'Tofshil Jahar BS 6': tofshiljaharBs6,
      'Tofshil SA Khotian No 7': tofshilSAkhotianNo7,
      'Tofshil Namzari Khotian No 8': tofshilNamzariKhotianNo8,
      'Tofshil Jahar BS Bujarito 9': tofshiljaharBSBujaritokhotiannumber9,
      'Tofshil Jahar BSDP 10': tofshiljaharBSDP10,
      'Tofshil Jahar BS Chapa 11': tofshiljaharBSchapa11,
      'Tofshil A Daag No 12': tofshilAdaagNo12,
      'LockUnlock':lockunlock,
      'Tofshil Jahar BS 13': tofshiljaharBs13,
      'Tofshil Mouaji 14': tofshilMouaji14,
      'Tofshil Chouhadda Uttor': tofshilchouhaddauttor,
      'Tofshil Chouhadda Dakshin': tofshilchouhaddadokshin,
      'Tofshil Chouhadda Purbo': tofshilchouhaddapurba,
      'Tofshil Chouhadda Poshim': tofshilchouhaddaposchim,
    };
  }

  Files9.fromMap(Map<String, dynamic> maap)
      : fileid = maap['Files ID'],
        clientid = maap['Client ID'],
        clientname = maap['Client Name'],
        descriptionone = maap['Description One'],
        status = maap['Status'],
        lockunlock = maap["LockUnlock"],
        budget = maap['Budget'],
        date = maap['Date'],
        mullo = maap['Mullo'],
        baina = maap['Baina'],
        baki = maap['Baki'],
        sakkhi = maap['Sakkhi'],
        filetype = maap['Files Type'],
        descriptiontwo = maap['Description Two'],
        tofshildistrict1 = maap['Tofshil District 1'],
        tofshilThana2 = maap['Tofshil Thana 2'],
        tofshilupozila3 = maap['Tofshil Upzila 3'],
        tofshilmouja4 = maap['Tofshil Mouja 4'],
        tofshiljlnoSA5 = maap['Tofshil JLNO 5'],
        tofshiljaharBs6 = maap['Tofshil Jahar BS 6'],
        bhumioffice = maap['Registry Office Naam'],
        tofshilSAkhotianNo7 = maap['Tofshil SA Khotian No 7'],
        tofshilNamzariKhotianNo8 = maap['Tofshil Namzari Khotian No 8'],
        consonaktokarinaam = maap['Sonaktokarir Naam'],
        consonaktokaripitarnaam = maap['Sonaktokarir Pitar Naam'],
        consonaktokarimatarnaam = maap['Sonaktokarir Matar Naam'],
        consonaktokarithikana = maap['Sonaktokarir Thikana'],
        tofshiljaharBSBujaritokhotiannumber9 =
            maap['Tofshil Jahar BS Bujarito 9'],
        tofshiljaharBSchapa11 = maap['Tofshil Jahar BS Chapa 11'],
        tofshiljaharBSDP10 = maap['Tofshil Jahar BSDP 10'],
        tofshilAdaagNo12 = maap['Tofshil A Daag No 12'],
        tofshiljaharBs13 = maap['Tofshil Jahar BS 13'],
        tofshilMouaji14 = maap['Tofshil Mouaji 14'],
        tofshilchouhaddauttor = maap['Tofshil Chouhadda Uttor'],
        tofshilchouhaddadokshin = maap['Tofshil Chouhadda Dakshin'],
        tofshilchouhaddapurba = maap['Tofshil Chouhadda Purbo'],
        tofshilchouhaddaposchim = maap['Tofshil Chouhadda Poshim'];
}
