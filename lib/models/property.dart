import 'package:cloud_firestore/cloud_firestore.dart';

class Property {
  String
  propertyNo,
      contactNo,
      propertyAdd,
      plotprice,
      docverify,
      registry,
      roadeast,
      roadwest,
      roadnorth,
      roadsouth,
      plotpartition,
      ploteast,
      plotwest,
      plotnorth,
      plotsouth,
      plotsumsqft,
      plotsumshot,
      roadtype,
      roaddocument,
      ekkonibaribanaorupojugi,
      biddut,
      gas,
      pakarasta,
      upzilatype,
      drainage,
      namzariadaikor,
      security,
      socialenvironment,
      imgurl,
      conbuilding1,
      conbuilding2,
      conbuilding3,
      conbuilding4,
      conschool1,
      conschool2,
      conschool3,towndistance,
      conschool4;
  int totalPrice;

  Property(
      {required this.propertyNo,
      required this.contactNo,
      required this.propertyAdd,
      required this.plotprice,
      required this.docverify,
      required this.registry,
      required this.roadeast,
      required this.roadwest,
      required this.roadnorth,
      required this.roadsouth,
      required this.plotpartition,
      required this.ploteast,
      required this.plotwest,required this.towndistance,
      required this.plotnorth,
      required this.plotsouth,
      required this.plotsumsqft,
      required this.plotsumshot,
      required this.roadtype,
      required this.roaddocument,
      required this.ekkonibaribanaorupojugi,
      required this.biddut,
      required this.gas,
      required this.pakarasta,
      required this.upzilatype,
      required this.drainage,
      required this.namzariadaikor,
      required this.security,
      required this.socialenvironment,
      required this.totalPrice,
      required this.imgurl,
        required this.conbuilding1,
      required this.conbuilding2,
      required this.conbuilding3,
      required this.conbuilding4,
      required this.conschool1,
      required this.conschool2,
      required this.conschool3,
      required this.conschool4});

  Map toJson() => {
        'Road Type': roadtype,
        'Road Document Available': roaddocument,
        'Ekkhuni Bari Bananor': ekkonibaribanaorupojugi,
        'Current Available': biddut,
        'Gas Available': gas,
        'Security': security,
        'Social Environment': socialenvironment,
        'Paka Rasta': pakarasta,
        'Upozila Type': upzilatype,
        'Drainage Available': drainage,
        'Namzari Adaikor': namzariadaikor,
        'Property No': propertyNo,
        'Total Price': totalPrice,
        'Contact No': contactNo,
        'Address': propertyAdd,
        'Plot Price': plotprice,
        'Document Verification': docverify,
        'Registry': registry,
        'Road East': roadeast,'Town Distance':towndistance,
        'Road West': roadwest,
        'Road North': roadnorth,
        'Road South': roadsouth,
        'Plot Partition': plotpartition,
        'Plot East': ploteast,
        'Plot West': plotwest,
        'Plot North': plotnorth,
        'Plot South': plotsouth,
        'ImageURL': imgurl,
    'Plot Sum SQFT': plotsumsqft,
        'Plot Sum Shotok': plotsumshot,
        'Gurutto Purno Place 1': conbuilding1,
        'Gurutto Purno Place 2': conbuilding2,
        'Gurutto Purno Place 3': conbuilding3,
        'Gurutto Purno Place 4': conbuilding4,
        'School College 1': conschool1,
        'School College 2': conschool2,
        'School College 3': conschool3,
        'School College 4': conschool4,
      };

  factory Property.fromJson(dynamic json) {
    return Property(propertyNo:json['Property No'], towndistance: json['Town Distance']
        , contactNo: json['Contact No'], propertyAdd: json['Address'], plotprice: json['Plot Price'], docverify: json['Document Verification'], registry: json['Registry'],
        roadeast: json['Road East'], roadwest: json['Road West'], roadnorth: json['Road North'], roadsouth: json['Road South'], plotpartition: json['Plot Partition'],
        ploteast: json['Plot East'], plotwest: json['Plot West'], plotnorth: json['Plot North'], plotsouth: json['Plot South'], plotsumsqft: json['Plot Sum SQFT'],
        plotsumshot: json['Plot Sum Shotok'], roadtype: json['Road Type'], roaddocument: json['Road Document Available'],
        ekkonibaribanaorupojugi: json['Ekkhuni Bari Bananor'], biddut: json['Current Available'], gas: json['Gas Available'], pakarasta: json['Paka Rasta'],
        upzilatype: json['Upozila Type'], drainage: json['Drainage Available'], namzariadaikor: json['Namzari Adaikor'], security: json['Security'],
        socialenvironment: json['Social Environment'], totalPrice: json['Total Price'], imgurl: json['ImageURL'], conbuilding1: json['Gurutto Purno Place 1'],
        conbuilding2: json['Gurutto Purno Place 2'], conbuilding3: json['Gurutto Purno Place 3'], conbuilding4: json['Gurutto Purno Place 4'], conschool1: json['School College 1'],
        conschool2: json['School College 2'], conschool3: json['School College 3'], conschool4: json['School College 4']);
  }
}
