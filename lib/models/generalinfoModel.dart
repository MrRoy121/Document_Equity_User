class GeneralModel {
  int serial;
  String name,
      formid,
      formtype,
      clientid,
      party,
      fathername,
      husbandname,
      mothername,
      dateofbirth,
      religion,
      ocupassion,
      nationality,
      nationalidnumber,
      parmavillage,
      tin,
      passportnumber,
      birthcertificatenumber,
      parmapost,
      parmathana,
      parmaunion,
      parmadistrict,
      presentaddress,
      presentvillage,
      presentpost,
      presentthana,
      presentunion,
      presentdistrict;

  GeneralModel(
      {required this.name,
      required this.serial,
      required this.formid,
      required this.formtype,
      required this.clientid,
      required this.party,
      required this.fathername,
        required this.husbandname,
      required this.birthcertificatenumber,
      required this.tin,
      required this.passportnumber,
      required this.mothername,
      required this.dateofbirth,
      required this.religion,
      required this.ocupassion,
      required this.nationality,
      required this.nationalidnumber,
      required this.parmavillage,
      required this.parmapost,
      required this.parmathana,
      required this.parmaunion,
      required this.parmadistrict,
      required this.presentaddress,
      required this.presentvillage,
      required this.presentpost,
      required this.presentthana,
      required this.presentunion,
      required this.presentdistrict});

  Map<String, dynamic> toMap() {
    return {
      'Serial': serial,
      'Form ID': formid,
      'Form Type': formtype,
      'Client ID': clientid,
      'Party': party,
      'Name': name,
      'Father Name': fathername,
      'Mother Name': mothername,
      'Husband Name': husbandname,
      'Date of Birth': dateofbirth,
      'Religion': religion,
      'Occupation': ocupassion,
      'Nationality': nationality,
      'National ID Number': nationalidnumber,
      'Permanent Village': parmavillage,'Birth Certificate Number':birthcertificatenumber,
      'Permanent Post Office': parmapost,
      'Permanent Thana': parmathana,
      'Tin': tin,
      'Passport Number': passportnumber,
      'Permanent Union': parmaunion,
      'Permanent District': parmadistrict,
      'Present Address': presentaddress,
      'Present Village': presentvillage,
      'Present Post Office': presentpost,
      'Present Thana': presentthana,
      'Present Union': presentunion,
      'Present District': presentdistrict,
    };
  }

  GeneralModel.fromMap(Map<String, dynamic> map)
      : serial = map["Serial"],
        name = map["Name"],
        formid = map["Form ID"],
        formtype = map["Form Type"],
        clientid = map["Client ID"],
        party = map["Party"],
        fathername = map["Father Name"],
        husbandname = map["Husband Name"],
        tin = map['Tin'],
        passportnumber = map['Passport Number'],
        mothername = map["Mother Name"],
        dateofbirth = map["Date of Birth"],
        religion = map["Religion"],
        ocupassion = map["Occupation"],
        nationality = map["Nationality"],
        nationalidnumber = map["National ID Number"],
        parmavillage = map["Permanent Village"],
        parmapost = map["Permanent Post Office"],
        parmathana = map["Permanent Thana"],
        parmaunion = map["Permanent Union"],birthcertificatenumber = map['Birth Certificate Number'],
        parmadistrict = map["Permanent District"],
        presentaddress = map["Present Address"],
        presentvillage = map["Present Village"],
        presentpost = map["Present Post Office"],
        presentthana = map["Present Thana"],
        presentunion = map["Present Union"],
        presentdistrict = map["Present District"];
}
