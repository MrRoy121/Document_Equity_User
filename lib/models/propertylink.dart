import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyLink {
  String
  filename,
      imagelink,
      propertyid,
      propertyno;
  Timestamp date;
  bool isvideo;

  PropertyLink(
      {required this.filename,
        required this.imagelink,
        required this.propertyid,
        required this.propertyno,
        required this.date,
        required this.isvideo,
        });

  Map toJson() => {
    'Date': date,
    'Filename': filename,
    'Image Link': imagelink,
    'Is Video': isvideo,
    'Property ID': propertyid,
    'Property No': propertyno,
  };

  factory PropertyLink.fromJson(dynamic json) {
    return PropertyLink(propertyno:json['Property No']
        , propertyid: json['Property ID'], isvideo: json['Is Video'], imagelink: json['Image Link'], filename: json['Filename'], date: json['Date'],);
  }
}
