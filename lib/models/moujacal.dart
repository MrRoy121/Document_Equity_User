class MoujaCal {
  String moujaname;
  int sl,
      jlno,
      Dukan,
      Vita,
      Shail,
      Amon,
      Boor,
      Duba,
      Tila,
      Charabari,
      Chara,
      Type;
  MoujaCal(
      {required this.Amon,
      required this.Boor,
      required this.Chara,
      required this.Charabari,
      required this.Duba,
      required this.Dukan,
      required this.jlno,
      required this.moujaname,
      required this.Shail,
      required this.sl,
      required this.Tila,
      required this.Type,
      required this.Vita});

  factory MoujaCal.fromMap(dynamic json) {
    return MoujaCal(
      Amon: json['Amon'] as int,
      Boor: json['Boor'] as int,
      Chara: json['Chara'] as int,
      Charabari: json['Charabari'] as int,
      Duba: json['Duba'] as int,
      Dukan: json['Dukan'] as int,
      jlno: json['JL No'] as int,
      moujaname: json['Mouja Naam'] as String,
      Shail: json['Shail'] as int,
      sl: json['SL'] as int,
      Tila: json['Tila'] as int,
      Type: json['Type'] as int,
      Vita: json['Vita'] as int,
    );
  }
}
