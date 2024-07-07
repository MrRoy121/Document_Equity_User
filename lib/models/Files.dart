import 'package:cloud_firestore/cloud_firestore.dart';


class Files {
  int budget;
  String fileid, clientid, clientname, filetype;
  int status,lockunlock;
  Timestamp date;

  Files(
      {required this.fileid,
      required this.clientid,
      required this.clientname,
      required this.filetype,
      required this.budget,
        required this.lockunlock,
      required this.status,
        required this.date,});

  Map<String, dynamic> toMap() {
    return {
      'Files ID': fileid,
      'Client ID': clientid,
      'Client Name': clientname,
      'Status': status,
      'Budget': budget,
      'Date': date,
      'LockUnlock':lockunlock,
      'Files Type': filetype,
    };
  }

  Files.fromMap(Map<String, dynamic> maap)
      : fileid = maap['Files ID'],
        clientid = maap['Client ID'],
        clientname = maap['Client Name'],
        status = maap['Status'],
        budget = maap['Budget'],
  lockunlock = maap['LockUnlock'],
        date = maap['Date'],
        filetype = maap['Files Type'];
}
