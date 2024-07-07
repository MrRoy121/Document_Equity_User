import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/Files14.dart';
import '../models/generalinfoModel.dart';

class PdfHelper_danerghoshona_shadharonproof {
  static generate(
      Files14 filesss,
      List<GeneralModel> generalInfo1stparty,
      List<GeneralModel> generalInfo2ndparty,BuildContext context) async {
    final pdf = pw.Document();

    final fonts =
    await rootBundle.load("assets/font/SutonnyMJ/SutonnyMJ-Bold.ttf");
    final fonts1 = await rootBundle
        .load("assets/font/arial/arialsb.ttf");
    final ccc = pw.Font.ttf(fonts1);
    final fontss = await rootBundle
        .load("assets/font/SutonnyMJ/SutonnyMJ-Bold-Italic.ttf");
    var data;
    if (filesss.imgurl.isNotEmpty) {
      final splitted = filesss.imgurl.split('.jpeg?alt=media&token=');
      String ss = splitted[0].substring(73);
      var response = await http.get(Uri.parse(
          "https://firebasestorage.googleapis.com/v0/b/document-equity.appspot.com/o$ss.jpeg?alt=media&token=${splitted[1]}"));
      data = response.bodyBytes;
    }
    final ttfbolditalic = pw.Font.ttf(fontss);
    final ttfbold = pw.Font.ttf(fonts);
    List<pw.Widget> widgets = [];
    widgets.add(
      pw.SizedBox(height: 5),
    );
    String alldata = "", allgrohita = "";

    for (int i = 0; i < generalInfo2ndparty.length; i++) {
      GeneralModel gn = generalInfo2ndparty[i];
      if (generalInfo2ndparty.length > 1) {
        alldata = "$alldata ($i) ${gn.name}";
      } else {
        alldata = gn.name;
      }
    }

    List<dynamic> sss = jsonDecode(filesss.khomotapraptoatorny);
    for (int i = 0; i < sss.length; i++) {
      if (generalInfo2ndparty.length > 1) {
        allgrohita = "$allgrohita ($i) ${sss[i]['Name']}";
      } else {
        allgrohita = sss[i]['Name'];
      }
    }

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text("1| †iwRw÷ª Awd‡mi bvg t ${filesss.registryoffice}",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 50),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text("2| `wj‡ji mvi ms‡¶c t ",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 5),
    );
    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(left: 130),
      child: pw.Table(
        children: [
          pw.TableRow(children: [
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("`wj‡ji cÖK…wZ",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("†gŠRvi bvg",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 4),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("BDwbqb /IqvW©",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 3),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("_vbv",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("†Rjv",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
          ], decoration: const pw.BoxDecoration(color: PdfColors.grey200)),
          pw.TableRow(
              verticalAlignment: pw.TableCellVerticalAlignment.middle,children: [
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("`v‡bi †NvlYv cÎ",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Column(children: [
                    pw.Text(filesss.tofshilmouja4,
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                    pw.SizedBox(height: 2),
                    pw.Text("†R.Gj bs-Gm.G- ${filesss.tofshiljlnoSA5}",
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                    pw.SizedBox(height: 2),
                    pw.Text("†R.Gj bs-we.Gm- ${filesss.tofshiljaharBs6}",
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                  ]),
                ),
                flex: 4),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text(filesss.union,
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 3),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text(filesss.tofshilThana2,
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text(filesss.tofshildistrict1,
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
          ]),
        ],
        border: pw.TableBorder.all(width: 1, color: PdfColors.black),
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 35),
    );
    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(left: 130),
      child: pw.Table(
        children: [
          pw.TableRow(children: [
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("n¯ÍvšÍwiZ m¤úwËi cwigvY ",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("†kªYx",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 1),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("g~j¨ (As‡K I K_vq)",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
          ], decoration: const pw.BoxDecoration(color: PdfColors.grey200)),
          pw.TableRow(
            children: [
              pw.Expanded(
                  child: pw.Container(
                    margin: const pw.EdgeInsets.symmetric(vertical: 4),
                    alignment: pw.Alignment.center,
                    child: pw.Text("${filesss.tofshilMouaji14} ",
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                  ),
                  flex: 2),
              pw.Expanded(
                  child: pw.Container(
                    margin: const pw.EdgeInsets.symmetric(vertical: 4),
                    alignment: pw.Alignment.center,
                    child: pw.Text(filesss.shreni,
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                  ),
                  flex: 1),
              pw.Expanded(
                  child: pw.Container(
                    margin: const pw.EdgeInsets.symmetric(vertical: 4),
                    alignment: pw.Alignment.center,
                    child: pw.Text(filesss.mullo,
                        textAlign: pw.TextAlign.center,
                        style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbold,
                        )),
                  ),
                  flex: 2),
            ],
          ),
        ],
        border: pw.TableBorder.all(width: 1, color: PdfColors.black),
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 25),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text(
            "3| `wjj MÖnxZv/MÖnxZvM‡Yi bvg I wVKvbv: (Av`vjZ, miKvwi ev †emiKvwi cÖwZôv‡bi †ÿ‡Î cÖ‡hvR¨ bq) ",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 6),
    );
    for (int i = 0; i < generalInfo1stparty.length; i++) {
      GeneralModel sss = generalInfo1stparty[i];
      widgets.add(
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(width: 130),
            pw.Expanded(
              child: pw.Column(
                children: [
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Row(children: [
                            generalInfo1stparty.length > 1
                                ? pw.Text(
                              "(${(i + 1).toString()}) ",
                              style: pw.TextStyle(
                                fontSize: 14,
                                color: PdfColors.black,
                                font: ttfbold,
                              ),
                            )
                                : pw.SizedBox(),
                            pw.Expanded(
                                child: pw.Text(
                                  "bvg ",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                )),
                          ]),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.name,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  sss.tin.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "wU.  AvB. Gb.",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.tin,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.husbandname.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "¯^vgxi bvg",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.husbandname,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "wcZvi bvg ",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.fathername,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "gvZvi bvg",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.mothername,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "Rb¥ ZvwiL",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.dateofbirth,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "ag© ",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.religion,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "†ckv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.ocupassion,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "RvZxqZv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.nationality,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),sss.birthcertificatenumber.isNotEmpty
                      ?pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "Rb¥ wbeÜb bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.birthcertificatenumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.nationalidnumber.isNotEmpty
                      ?pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "RvZxq cwiPqcÎ bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.nationalidnumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.passportnumber.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "cvm‡cvU© bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.passportnumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      );
      widgets.add(
        pw.SizedBox(height: 2),
      );

      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Column(
            children: [
              pw.Container(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        sss.presentaddress.isNotEmpty
                            ? pw.Text("¯’vqx I eZ©gvb wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black))
                            : pw.Text("¯’vqx wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black)),
                        pw.SizedBox(height: 2),
                        pw.Container(
                            width: 55, height: 0.5, color: PdfColors.black),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "MÖvg/†ivW",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmavillage,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "WvKNi",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmapost,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "BDwbqb/IqvW©",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmaunion,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "_vbv/Dc‡Rjv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmathana,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "†Rjv/kni",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmadistrict,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        sss.presentaddress.isNotEmpty
                            ? pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "eZ©gvb wVKvbv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentaddress,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                            : pw.SizedBox(),
                      ])),
              sss.presentaddress.isNotEmpty
                  ? pw.SizedBox()
                  : pw.Container(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("eZ©gvb wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black)),
                        pw.SizedBox(height: 2),
                        sss.presentaddress.isNotEmpty
                            ? pw.SizedBox()
                            : pw.Container(
                            width: 55,
                            height: 0.5,
                            color: PdfColors.black),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "MÖvg/†ivW",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentvillage,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "WvKNi",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentpost,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "BDwbqb/IqvW©",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentunion,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "_vbv/Dc‡Rjv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentthana,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "†Rjv/kni",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentdistrict,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 5),
                      ])),
            ],
          ),
        ),
      );
    }

    widgets.add(
      pw.SizedBox(height: 10),
    );
    for (int i = 0; i < generalInfo2ndparty.length; i++) {
      GeneralModel sss = generalInfo2ndparty[i];
      widgets.add(
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(width: 130),
            pw.Expanded(
              child: pw.Column(
                children: [
                  i == 0
                      ? pw.Text(
                      "4| `wjj `vZv/`vZvM‡Yi bvg I wVKvbvt (Av`vjZ, miKvwi ev †emiKvwi cÖwZôv‡bi †ÿ‡Î cÖ‡hvR¨ bq)",
                      style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbolditalic,
                          lineSpacing: 5,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black))
                      : pw.SizedBox(),
                  i == 0 ? pw.SizedBox(height: 6) : pw.SizedBox(),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Row(children: [
                            generalInfo2ndparty.length > 1
                                ? pw.Text(
                              "(${(i + 1).toString()}) ",
                              style: pw.TextStyle(
                                fontSize: 14,
                                color: PdfColors.black,
                                font: ttfbold,
                              ),
                            )
                                : pw.SizedBox(),
                            pw.Expanded(
                                child: pw.Text(
                                  "bvg ",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                )),
                          ]),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.name,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  sss.tin.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "wU.  AvB. Gb.",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.tin,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.husbandname.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "¯^vgxi bvg",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.husbandname,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "wcZvi bvg ",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.fathername,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "gvZvi bvg",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.mothername,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "Rb¥ ZvwiL",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.dateofbirth,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "ag© ",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.religion,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "†ckv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.ocupassion,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),
                  pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "RvZxqZv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.nationality,
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  ),
                  pw.SizedBox(height: 2),sss.birthcertificatenumber.isNotEmpty
                      ?pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "Rb¥ wbeÜb bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.birthcertificatenumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.nationalidnumber.isNotEmpty
                      ?pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "RvZxq cwiPqcÎ bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.nationalidnumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                  sss.passportnumber.isNotEmpty
                      ? pw.Row(
                    children: [
                      pw.Expanded(
                          child: pw.Text(
                            "cvm‡cvU© bs",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                color: PdfColors.black),
                          ),
                          flex: 5),
                      pw.Text(
                        " t ",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            color: PdfColors.black),
                      ),
                      pw.Expanded(
                          child: pw.Text(
                            sss.passportnumber,
                            style: pw.TextStyle(
                                fontSize: 12,
                                font: ccc,
                                color: PdfColors.black),
                          ),
                          flex: 12),
                    ],
                  )
                      : pw.SizedBox(),
                  pw.SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      );

      widgets.add(
        pw.SizedBox(height: 2),
      );
      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Column(
            children: [
              pw.Container(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        sss.presentaddress.isNotEmpty
                            ? pw.Text("¯’vqx I eZ©gvb wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black))
                            : pw.Text("¯’vqx wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black)),
                        pw.SizedBox(height: 2),
                        sss.presentaddress.isNotEmpty
                            ? pw.Container(
                            width: 100, height: 0.5, color: PdfColors.black)
                            : pw.Container(
                            width: 55, height: 0.5, color: PdfColors.black),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "MÖvg/†ivW",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmavillage,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "WvKNi",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmapost,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "BDwbqb/IqvW©",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmaunion,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "_vbv/Dc‡Rjv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmathana,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "†Rjv/kni",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.parmadistrict,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        sss.presentaddress.isNotEmpty
                            ? pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "eZ©gvb wVKvbv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentaddress,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                            : pw.SizedBox(),
                      ])),
              sss.presentaddress.isNotEmpty
                  ? pw.SizedBox()
                  : pw.Container(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("eZ©gvb wVKvbv",
                            style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black)),
                        pw.SizedBox(height: 2),
                        sss.presentaddress.isNotEmpty
                            ? pw.SizedBox()
                            : pw.Container(
                            width: 55,
                            height: 0.5,
                            color: PdfColors.black),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "MÖvg/†ivW",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentvillage,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "WvKNi",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentpost,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "BDwbqb/IqvW©",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentunion,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "_vbv/Dc‡Rjv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentthana,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "†Rjv/kni",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss.presentdistrict,
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 5),
                      ])),
            ],
          ),
        ),
      );
    }
    widgets.add(
      pw.SizedBox(height: 10),
    );
    List<dynamic> khomotapraptoatorny = jsonDecode(filesss.khomotapraptoatorny);

    if (khomotapraptoatorny.length == 0) {
      print(filesss.khomotapraptoatorny.isEmpty);
      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Text(
              "5| ¶gZvcÖvß A¨vUwb©/ cÖwZwbwa/AwffveK Gi bvg, wVKvbv I weeiY (cÖ‡hvR¨ †¶‡Î): Avek¨K b‡n|",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ),
      );
      widgets.add(
        pw.SizedBox(height: 10),
      );

      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Text(
              "6| cvIqvi Ae A¨vUwb©i weeiY (cÖ‡hvR¨ †¶‡Î)t Avek¨K b‡n|",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ),
      );
    } else {
      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Text(
              "5| ¶gZvcÖvß A¨vUwb©/ cÖwZwbwa/AwffveK Gi bvg, wVKvbv I weeiY (cÖ‡hvR¨ †¶‡Î):",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ),
      );
      widgets.add(
        pw.SizedBox(height: 6),
      );
      for (int i = 0; i < sss.length; i++) {
        widgets.add(pw.Container(
            child: pw.Column(children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(width: 130),
                  pw.Expanded(
                    child: pw.Column(
                      children: [
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Row(children: [
                                  sss.length > 1
                                      ? pw.Text(
                                    "(${(i + 1).toString()}) ",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      font: ttfbold,
                                    ),
                                  )
                                      : pw.SizedBox(),
                                  pw.Expanded(
                                      child: pw.Text(
                                        "bvg ",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            font: ttfbold,
                                            color: PdfColors.black),
                                      )),
                                ]),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Name'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        khomotapraptoatorny[i]['Tin'].isNotEmpty
                            ? pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "wU.  AvB. Gb.",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Tin'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                            : pw.SizedBox(),
                        pw.SizedBox(height: 2),
                        khomotapraptoatorny[i]['Husband Name'].isNotEmpty
                            ? pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "¯^vgxi bvg",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Husband Name'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                            : pw.SizedBox(),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "wcZvi bvg ",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Father Name'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "gvZvi bvg",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Mother Name'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "Rb¥ ZvwiL",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Date of Birth'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "ag© ",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Religion'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "†ckv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Occupation'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "RvZxqZv",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Nationality'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ),
                        pw.SizedBox(height: 2),
                        sss[i]['Birth Certificate Number'].isNotEmpty
                            ?pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "RvZxq cwiPqcÎ bs",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  sss[i]['Birth Certificate Number'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        ): pw.SizedBox(),
                        pw.SizedBox(height: 2),
                        sss[i]['National ID Number'].isNotEmpty
                            ?pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "RvZxq cwiPqcÎ bs",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['National ID Number'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                                    : pw.SizedBox(),
                        pw.SizedBox(height: 2),
                        khomotapraptoatorny[i]['Passport Number'].isNotEmpty
                            ? pw.Row(
                          children: [
                            pw.Expanded(
                                child: pw.Text(
                                  "cvm‡cvU© bs",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 5),
                            pw.Text(
                              " t ",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            pw.Expanded(
                                child: pw.Text(
                                  khomotapraptoatorny[i]['Passport Number'],
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                      color: PdfColors.black),
                                ),
                                flex: 12),
                          ],
                        )
                            : pw.SizedBox(),
                        pw.SizedBox(height: 2),
                      ],
                    ),
                  ),
                ],
              ),
            ])));

        widgets.add(
          pw.SizedBox(height: 2),
        );

        widgets.add(
          pw.Container(
            margin: const pw.EdgeInsets.only(left: 130),
            child: pw.Column(
              children: [
                pw.Container(
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          sss[i]['Present Address'].isNotEmpty
                              ? pw.Text("¯’vqx I eZ©gvb wVKvbv",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black))
                              : pw.Text("¯’vqx wVKvbv",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 2),
                          sss[i]['Present Address'].isNotEmpty
                              ? pw.Container(
                              width: 100, height: 0.5, color: PdfColors.black)
                              : pw.Container(
                              width: 55, height: 0.5, color: PdfColors.black),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "MÖvg/†ivW",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Permanent Village'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "WvKNi",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Permanent Post Office'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "BDwbqb/IqvW©",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Permanent Union'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "_vbv/Dc‡Rjv",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Permanent Thana'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "†Rjv/kni",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Permanent District'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          sss[i]['Present Address'].isNotEmpty
                              ? pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "eZ©gvb wVKvbv",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present Address'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          )
                              : pw.SizedBox(),
                        ])),
                sss[i]['Present Address'].isNotEmpty
                    ? pw.SizedBox()
                    : pw.Container(
                    child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text("eZ©gvb wVKvbv",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 2),
                          sss[i]['Present Address'].isNotEmpty
                              ? pw.SizedBox()
                              : pw.Container(
                              width: 55,
                              height: 0.5,
                              color: PdfColors.black),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "MÖvg/†ivW",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present Village'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "WvKNi",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present Post Office'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "BDwbqb/IqvW©",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present Union'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "_vbv/Dc‡Rjv",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present Thana'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 2),
                          pw.Row(
                            children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "†Rjv/kni",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 5),
                              pw.Text(
                                " t ",
                                style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                    color: PdfColors.black),
                              ),
                              pw.Expanded(
                                  child: pw.Text(
                                    sss[i]['Present District'],
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  ),
                                  flex: 12),
                            ],
                          ),
                          pw.SizedBox(height: 5),
                        ])),
              ],
            ),
          ),
        );
      }

      widgets.add(
        pw.SizedBox(height: 10),
      );
      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Column(
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                        "6| cvIqvi Ae A¨vUwb©i weeiY (cÖ‡hvR¨ †¶‡Î)t Avek¨K b‡n|",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbolditalic,
                            lineSpacing: 5,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)),
                    pw.SizedBox(height: 6),
                    pw.Row(
                      children: [
                        pw.Expanded(
                            child: pw.Row(children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "`vZvi bvg",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  )),
                            ]),
                            flex: 5),
                        pw.Text(
                          " t ",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                              color: PdfColors.black),
                        ),
                        pw.Expanded(
                            child: pw.Text(
                              alldata,
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            flex: 12),
                      ],
                    ),
                    pw.SizedBox(height: 2),
                    pw.Row(
                      children: [
                        pw.Expanded(
                            child: pw.Row(children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "MªnxZvi bvg",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  )),
                            ]),
                            flex: 5),
                        pw.Text(
                          " t ",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                              color: PdfColors.black),
                        ),
                        pw.Expanded(
                            child: pw.Text(
                              allgrohita,
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            flex: 12),
                      ],
                    ),
                    pw.SizedBox(height: 2),
                    pw.Row(
                      children: [
                        pw.Expanded(
                            child: pw.Row(children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "Awd‡mi bvg",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  )),
                            ]),
                            flex: 5),
                        pw.Text(
                          " t ",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                              color: PdfColors.black),
                        ),
                        pw.Expanded(
                            child: pw.Text(
                              filesss.registryoffice,
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            flex: 12),
                      ],
                    ),
                    pw.SizedBox(height: 2),
                    pw.Row(
                      children: [
                        pw.Expanded(
                            child: pw.Row(children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "`wjj bs",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  )),
                            ]),
                            flex: 5),
                        pw.Text(
                          " t ",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                              color: PdfColors.black),
                        ),
                        pw.Expanded(
                            child: pw.Text(
                              filesss.dolilnong,
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            flex: 12),
                      ],
                    ),
                    pw.SizedBox(height: 2),
                    pw.Row(
                      children: [
                        pw.Expanded(
                            child: pw.Row(children: [
                              pw.Expanded(
                                  child: pw.Text(
                                    "`wj‡ji ZvwiL",
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        font: ttfbold,
                                        color: PdfColors.black),
                                  )),
                            ]),
                            flex: 5),
                        pw.Text(
                          " t ",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                              color: PdfColors.black),
                        ),
                        pw.Expanded(
                            child: pw.Text(
                              filesss.dolilertarik,
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  color: PdfColors.black),
                            ),
                            flex: 12),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
      widgets.add(
        pw.SizedBox(height: 4),
      );
    }

    widgets.add(
      pw.SizedBox(height: 6),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text(
            "7| n¯ÍvšÍivaxb Rwgi by¨bZgc‡¶ 25 eQ‡ii gvwjKvbvi avivevwnK weeiY t (h_vh_ †¶‡Î Iqvwik I evqv `wjj mg~‡ni we¯ÍvwiZ weeiY Ges n¯ÍvšÍ‡ii D‡Ïk¨, m¤úwËi `Lj, BR‡g›U ¯^Z¡ Ges n¯ÍvšÍi m¤úwK©Z D‡jøL‡hvM¨ gšÍe¨, hw` _v‡K BZ¨vw`i weeiY)",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbold,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 5),
    );

    String des1 =
        "†Rjv- ${filesss.tofshildistrict1}, _vbv- ${filesss.tofshilThana2}, ${filesss.registryoffice} Gi GjvKvaxb, ${filesss.descriptionone}";
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Paragraph(
          text: des1,
          textAlign: pw.TextAlign.justify,
          style: pw.TextStyle(
              fontSize: 14,
              font: ttfbold,
              lineSpacing: 5,
              color: PdfColors.black),
        ),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 5),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Paragraph(
          text: filesss.descriptiontwo,
          textAlign: pw.TextAlign.justify,
          style: pw.TextStyle(
              fontSize: 14,
              font: ttfbold,
              lineSpacing: 5,
              color: PdfColors.black),
        ),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Text(
              "8| GKvwaK †µZv/MÖnxZvi †¶‡Î µqK…Z/AwR©Z Rwgi nvivnvwi gvwjKvbvi weeiY (hw` _v‡K)t",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 5),
          pw.Table(
            children: [
              pw.TableRow(children: [
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text("†µZv / MÖnxZvi bvg",
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 1),
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text("gvwjKvbvi cwigvY",
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 2),
              ], decoration: const pw.BoxDecoration(color: PdfColors.grey200)),
              for (int i = 0; i < generalInfo1stparty.length; i++)
                pw.TableRow(
                  children: [
                    pw.Expanded(
                        child: pw.Container(
                          margin: const pw.EdgeInsets.symmetric(vertical: 4),
                          alignment: pw.Alignment.center,
                          child: pw.Text(
                              generalInfo1stparty.length < 1
                                  ? "$i| ${generalInfo1stparty[i].name}"
                                  : generalInfo1stparty[i].name,
                              textAlign: pw.TextAlign.center,
                              style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                              )),
                        ),
                        flex: 1),
                    pw.Expanded(
                        child: pw.Container(
                          margin: const pw.EdgeInsets.symmetric(vertical: 4),
                          alignment: pw.Alignment.center,
                          child: pw.Text(filesss.mouaji1stparty[i],
                              textAlign: pw.TextAlign.center,
                              style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                              )),
                        ),
                        flex: 2),
                  ],
                ),
            ],
            border: pw.TableBorder.all(width: 1, color: PdfColors.black),
          ),
        ]),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text(
            "9| GKvwaK we‡µZv/n¯ÍvšÍiKvixi †¶‡Î n¯ÍvšÍwiZ Rwgi nvivnvwi gvwjKvbvi weeiY (hw` _v‡K)t",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 5),
    );
    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(left: 130),
      child: pw.Table(
        children: [
          pw.TableRow(children: [
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("we‡µZv  n¯ÍvšÍiKvixi bvg",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 1),
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("gvwjKvbvi cwigvY",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 2),
          ], decoration: const pw.BoxDecoration(color: PdfColors.grey200)),
          for (int i = 0; i < generalInfo2ndparty.length; i++)
            pw.TableRow(
              children: [
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                          generalInfo2ndparty.length < 1
                              ? "$i| ${generalInfo2ndparty[i].name}"
                              : generalInfo2ndparty[i].name,
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 1),
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text(filesss.mouaji2ndparty[i],
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 2),
              ],
            ),
        ],
        border: pw.TableBorder.all(width: 1, color: PdfColors.black),
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130, bottom: 5),
        child: pw.Text(
            "10| m¤úv`‡bi ZvwiL (evsjv I Bs‡iRx)t ${filesss.sompadonertarik}",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(
          left: 130,
        ),
        width: double.infinity,
        child: pw.Column(
          children: [
            pw.SizedBox(height: 5),
            pw.Container(
                child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text("11| m¤úwËi Zdwmjt",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbolditalic,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black)),
                      pw.SizedBox(height: 5),
                      pw.Table(
                        children: [
                          pw.TableRow(
                            children: [
                              pw.Expanded(
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(5),
                                    child: pw.Column(
                                      mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.SizedBox(height: 10),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "†Rjv- ${filesss.tofshildistrict1}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.SizedBox(height: 15),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "_vbv- ${filesss.tofshilThana2}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.SizedBox(height: 15),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text("IqvW©- ${filesss.union}",
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.SizedBox(height: 15),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text("MÖvg- ${filesss.gram}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.SizedBox(height: 15),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "f~wg Awd‡mi bvg- ${filesss.bbhumioffice}",
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                lineSpacing: 5,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                  flex: 1),
                              pw.Expanded(
                                  child: pw.Container(
                                    padding: const pw.EdgeInsets.all(5),
                                    child: pw.Column(
                                      mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "‡gŠRv- ${filesss.tofshilmouja4}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "‡R.Gj b¤^vi t Gm.G- ${filesss.tofshiljlnoSA5}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "we.Gm- ${filesss.tofshiljaharBs6}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "LwZqvb bv¤^vit Gm.G- ${filesss.tofshilSAkhotianNo7}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "bvgRvix LwZqvb bs- ${filesss.tofshilNamzariKhotianNo8}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        filesss.tofshiljaharBSDP10.isNotEmpty
                                            ? pw.Container(
                                          margin:
                                          const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "we.Gm wW.wc- ${filesss.tofshiljaharBSDP10}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        )
                                            : pw.Container(
                                          margin:
                                          const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "we.Gm. Qvcv- ${filesss.tofshiljaharBSchapa11}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "`vM bst Gm.G- ${filesss.tofshilAdaagNo12}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "hvnv we.Gm- ${filesss.tofshiljaharBs13}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(filesss.conflaterbiboron,
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "Gm.G `v‡M †gvU Rwg- ${filesss.sadage}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                        pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "we.Gm `v‡M †gvU Rwg- ${filesss.bsdage}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  flex: 2),
                            ],
                          ),
                        ],
                        border:
                        pw.TableBorder.all(width: 1, color: PdfColors.black),
                      ),
                    ])),
            pw.SizedBox(height: 5),
          ],
        ),
      ),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 130,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("12| m¤úwËi †PŠnÏxi weeiY t",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 5),
          pw.Table(
            children: [
              pw.TableRow(
                children: [
                  pw.Expanded(
                      child: pw.Container(
                        margin: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child: pw.Text("DË‡it ${filesss.tofshilchouhaddauttor}",
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                      ),
                      flex: 1),
                  pw.Expanded(
                      child: pw.Container(
                        margin: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child:
                        pw.Text("`w¶‡Yt ${filesss.tofshilchouhaddadokshin}",
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                      ),
                      flex: 1),
                ],
              ),
              pw.TableRow(
                children: [
                  pw.Expanded(
                      child: pw.Container(
                        margin: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child:
                        pw.Text("c~‡e©t ${filesss.tofshilchouhaddapurba}",
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                      ),
                      flex: 1),
                  pw.Expanded(
                      child: pw.Container(
                        margin: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 5),
                        child:
                        pw.Text("cwð‡gt ${filesss.tofshilchouhaddaposchim}",
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                      ),
                      flex: 1),
                ],
              ),
            ],
            border: pw.TableBorder.all(width: 1, color: PdfColors.black),
          ),
        ],
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text(
            "13| n¯ÍvšÍwiZ m¤úwËi cwigvY (As‡K I K_vq)t- †gvqvwR ${filesss.tofshilMouaji14}|",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text(
            "14| n¯ÍvšÍwiZ m¤úwËi g~j¨ Ges cwi‡kv‡ai weeiY (hw` _v‡K): ${filesss.mullo}|",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(
      pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text("15| n¯ÍvšÍwiZ m¤úwËi nvZ bK&kv I cwigvct",
                    style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbolditalic,
                        lineSpacing: 5,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.black)),
                filesss.imgurl.isNotEmpty
                    ? pw.Container(
                  child: pw.Image(pw.MemoryImage(data),
                      width: 150, height: 150),
                )
                    : pw.SizedBox(),
              ])),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );


    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text("16| ˆKwdqr (hw` _v‡K) : ${filesss.koifiot}",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),

      ),
    );



    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Column(
            children: [
              pw.SizedBox(height: 10),
              pw.Container(child:pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                        "17| `wjj cvV Kwiqv / KivBqv Avgiv Dnvi gg© AeMZ I m¤§Z nBqv ¯^v¶i Kwijvg :",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbolditalic,
                            lineSpacing: 5,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)),
                    pw.SizedBox(height: 2),
                    pw.Text("`vZv/A¨vUwb©i/cÖwZwbwai/Awffve‡Ki ¯^v¶i :",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)),
                    pw.SizedBox(height: 25),
                    pw.Text("MÖnxZv /A¨vUwb©i/cÖwZwbwai/Awffve‡Ki ¯^v¶i :",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)),
                  ])),
              pw.SizedBox(height: 25),
            ]),
      ),
    );

    for (int i = 0; i < filesss.sakkhi.length; i++) {
      widgets.add(
        pw.Container(
            margin: const pw.EdgeInsets.only(left: 130),
            child: pw.Row(children: [
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    i == 0
                        ? pw.Text("18| mv¶x / mv¶xM‡Yi bvg, wVKvbv I ¯^v¶i :",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbolditalic,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black))
                        : pw.SizedBox(),
                    pw.SizedBox(height: 5),
                    pw.Text("(${i + 1})",
                        style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbolditalic,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)),
                    pw.SizedBox(height: 6),
                    pw.Table(
                      children: [
                        pw.TableRow(children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text("  bvg t  ${filesss.sakkhi[i]["Name"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text("  ¯^v¶i I ZvwiL : ",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                        ]),
                        pw.TableRow(children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  wcZvi bvg t ${filesss.sakkhi[i]["Father Name"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  gvZvi bvg t ${filesss.sakkhi[i]["Mother Name"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                        ]),
                        pw.TableRow(children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  MÖvg/†ivW bs t ${filesss.sakkhi[i]["Permanent Village"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  WvKNi t ${filesss.sakkhi[i]["Permanent Post Office"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                        ]),
                        pw.TableRow(children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  _vbv t ${filesss.sakkhi[i]["Permanent Thana"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                                pw.SizedBox(height: 2),
                                pw.Text(
                                    "  †Rjv t ${filesss.sakkhi[i]["Permanent District"]}",
                                    style: pw.TextStyle(
                                      fontSize: 14,
                                      font: ttfbold,
                                    )),
                                pw.SizedBox(height: 6),
                              ]),
                        ]),
                      ],
                      border:
                      pw.TableBorder.all(width: 1, color: PdfColors.black),
                    ),
                    pw.SizedBox(height: 4),
                  ],
                ),
              ),
            ])),
      );
    }

    widgets.add(
      pw.SizedBox(height: 15),
    );
    widgets.add(
      pw.Container(
          margin: const pw.EdgeInsets.only(left: 130),
          child: pw.Row(children: [
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text("19| mbv³Kvixi bvg, wVKvbv I ¯^v¶i t",
                      style: pw.TextStyle(
                          fontSize: 14,
                          font: ttfbolditalic,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black)),
                  pw.SizedBox(height: 5),
                  pw.SizedBox(height: 6),
                  pw.Table(
                    children: [
                      pw.TableRow(children: [
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text("  bvg t  ${filesss.consonaktokarinaam}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text("  ¯^v¶i I ZvwiL : ",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text(
                                  "  wcZvi bvg t ${filesss.consonaktokaripitarnaam}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text(
                                  "  gvZvi bvg t ${filesss.consonaktokarimatarnaam}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text(
                                  "  MÖvg/†ivW bs t ${filesss.consonaktokarigram}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text(
                                  "  WvKNi t ${filesss.consonaktokaridakghor}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text("  _vbv t ${filesss.consonaktokarithana}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            children: [
                              pw.SizedBox(height: 2),
                              pw.Text("  †Rjv t ${filesss.consonaktokarizila}",
                                  style: pw.TextStyle(
                                    fontSize: 14,
                                    font: ttfbold,
                                  )),
                              pw.SizedBox(height: 6),
                            ]),
                      ]),
                    ],
                    border:
                    pw.TableBorder.all(width: 1, color: PdfColors.black),
                  ),
                  pw.SizedBox(height: 4),
                ],
              ),
            ),
          ])),
    );

    widgets.add(
      pw.SizedBox(height: 25),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Column(
            children: [
              pw.SizedBox(height: 15),
              pw.Container(child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,children: [
                pw.Text(
                    "20| n¯ÍvšÍwiZ m¤úwËi mwVK cwiPq Ges evRvi g~j¨ m¤ú‡K© mg¨K AewnZ nBqv Avwg wbgœ ¯^v¶iKvix AÎ `wjj gymvwe`v KwiqvwQ/ wjwLqv w`qvwQ Ges c¶MY‡K cvV Kwiqv ïbvBqvwQ| `wjjwU (00) d‡`© wjwLZ|",
                    style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbolditalic,
                        lineSpacing: 10,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.black)),
                pw.SizedBox(height: 30),
                pw.Text(
                    "`wjj †jL‡Ki bvg I ¯^v¶i t\nmb` b¤^vi t\nAwd‡mi bvg t wm‡jU m`i mve-‡iwR÷ªvi Awdm| ",
                    style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                        lineSpacing: 5,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.black)),])),
              pw.SizedBox(height: 10),
            ]),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 25),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Column(children: [
          pw.RichText(
            text: pw.TextSpan(
              children: <pw.TextSpan>[
                pw.TextSpan(
                    text: '21| `wjj `vZvi njdbvgv t\n     (ivóªcwZi 1972 m‡bi 142 bs Av‡`k, 1908 m‡bi †iwR‡÷ªkb AvB‡bi ', style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 8,
                    color: PdfColors.black)),
                pw.TextSpan(
                    text: 'Section 52A(g) ', style: pw.TextStyle(
                    fontSize: 12,
                    font: ccc,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 8,
                    color: PdfColors.black)),
                pw.TextSpan(
                    text: 'Ges 1882 m‡bi m¤úwË n¯ÍvšÍi AvB‡bi ', style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 8,
                    color: PdfColors.black)),
                pw.TextSpan(
                    text: 'Section 53B ', style: pw.TextStyle(
                    fontSize: 12,
                    font: ccc,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 8,
                    color: PdfColors.black)),
                pw.TextSpan(
                    text: 'Abymv‡i cÖ`Ë njdbvgv)', style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 8,
                    color: PdfColors.black)),
              ],
            ),
          ),
          pw.SizedBox(height: 15),
          pw.Row(children: [
            pw.Expanded(child: pw.SizedBox()),
            pw.Text("(njdbvgv c„_K mshy³ Av‡Q)",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbold,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
          ])
        ]),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 25),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Text("22| mve-‡iwRóªv‡ii bvg I c`exmn ¯^v¶i I ZvwiL t",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                fontWeight: pw.FontWeight.bold,
                lineSpacing: 5,
                color: PdfColors.black)),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 40),
    );


    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 130,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("njdbvgv",
              style: pw.TextStyle(
                  fontSize: 16,
                  font: ttfbolditalic,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 2),
          pw.Container(
              width: 60,
              height: 0.5,
              margin: pw.EdgeInsets.symmetric(horizontal: 3),
              color: PdfColors.black)
        ],
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 5),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 130,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("njdKvix/njdKvixM‡Yi bvg I wVKvbvt",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbold,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 2),
          pw.Container(
              width: 180,
              height: 0.5,
              margin: const pw.EdgeInsets.symmetric(horizontal: 3),
              color: PdfColors.black)
        ],
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 5),
    );

    String ss =
        "      eivei, ${filesss.registryoffice}, †Rjvt ${filesss.tofshildistrict1}| \n";
    if (generalInfo2ndparty.length > 1) {
      for (int i = 0; i < generalInfo2ndparty.length; i++) {
        ss =
        "$ss (${i + 1}) ${generalInfo2ndparty[i].name}, wcZv-${generalInfo2ndparty[i].fathername}, mvwKb-${generalInfo2ndparty[i].parmavillage}, WvKNi-${generalInfo2ndparty[i].parmapost}, _vbv-${generalInfo2ndparty[i].parmathana}, †Rjv-${generalInfo2ndparty[i].parmadistrict}\n";
      }
      ss = "$ss\n\n";
    } else {
      ss =
      "$ss${generalInfo2ndparty[0].name}, wcZv-${generalInfo2ndparty[0].fathername}, mvwKb-${generalInfo2ndparty[0].parmavillage}, WvKNi-${generalInfo2ndparty[0].parmapost}, _vbv-${generalInfo2ndparty[0].parmathana}, †Rjv-${generalInfo2ndparty[0].parmadistrict}\n\n\n";
    }
    ss = ss +
        "GB g‡g© †NvlYvc~e©K njdbvgv cÖ`vb Kwi‡ZwQ †h, Avwg/Avgiv evsjv‡`‡ki bvMwiK|\nAvwg/Avgiv †NvlYv Kwi‡ZwQ †h,\n\n\n\n(K) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k `vjvj (we‡kl UªvBey¨bvj) Av‡`k, 1972 (1972 m‡bi wc. I bs 8) Gi Aaxb †µv‡Ki AvIZvaxb b‡n;\n\n(L) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k cwiZ¨³ m¤úwË (wbqš¿Y, e¨e¯’vcbv I wb¯úwË) Av‡`k, 1972 (1972 m‡bi wc.I bs 16) Gi A_©vbyhvqx cwiZ¨³ m¤úwË b‡n;\n\n(M) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË AvcvZZt ejer †Kvb AvB‡bi Aaxb miKv‡i eZ©vq bvB, ev miKv‡ii AbyK‚‡j ev‡Rqvß nq bvB;\n\n(N) cÖ¯ÍvweZ n¯ÍvšÍi AvcvZZt ejer Ab¨ †Kvb AvB‡bi †Kvb weav‡bi mwnZ mvsNwl©K b‡n;\n\n(O) cÖ¯ÍvweZ n¯ÍvšÍi evsjv‡`k j¨vÛ †nvwìs (wjwg‡Ukb) Av‡`k, 1972 (1972 m‡bi wc. I bs 98) Gi Aby‡”Q` 5 G Abyhvqx evwZj‡hvM¨ b‡n; Ges\n\n(P) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwËi weeiY mwVKfv‡e ewY©Z nBqv‡Q Ges Dnv Aeg~j¨ Kiv nq bvB Ges DwjøwLZ m¤úwË n¯ÍvšÍiKi‡Y Av‡e`bKvixi ˆea AwaKvi iwnqv‡Q| ";

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 130),
        child: pw.Paragraph(
            text: ss,
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbold,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.Container(
        margin: pw.EdgeInsets.only(left: 130),
        child: pw.Paragraph(
            text:
            "Avwg/Avgiv AviI †NvlYv Kwi‡ZwQ †h,\nAvwg/Avgiv `wj‡j ewY©Z m¤úwËi wbi¼zk gvwjK| Ab¨ c‡¶i mwnZ GB m¤úwËi evqbv Pzw³ ¯^v¶i Kwi bvB ev Ab¨ †Kv_vI weµq Kwi bvB ev Ab¨ †Kvb c‡¶i wbKU eÜK ivwL bvB| GB m¤úwË miKvwi Lvm/Awc©Z ev cwiZ¨³ m¤úwË bq ev Ab¨ †Kvbfv‡e miKv‡ii Dci eZ©vq bvB| `wj‡j ewY©Z †Kvb Z_¨ fyjfv‡e wjwce× nBqv _vwK‡j Z¾b¨ Avwg/Avgiv `vqx nBe Ges Avwg/Avgv‡`i weiæ‡× †`Iqvwb I †dŠR`vwi gvgjv Kiv hvB‡e| n¯ÍvšÍwiZ Rwg m¤ú‡K© †Kvb fyj, AmZ¨ ev weåvwšÍKi Z_¨cÖ`vb Kwiqv _vwK‡j cÖ‡qvR‡b wbR LiPvq fyj ï× Kwiqv ¶wZc~iYmn b~Zb `wjj cÖ¯‘Z I †iwRw÷ª Kwiqv w`‡Z eva¨ _vwKe| \nD‡jøL¨ `wj‡j n¯ÍvšÍwiZ m¤úwËi g~j¨ Kg †`Lv‡bv nq bvB| \n\n`wj‡j ewY©Z m¤úwË‡Z Avgvi/Avgv‡`i ˆea ¯^Z¡ I AwaKvi envj Av‡Q Ges cÖ`Ë weeiY Avgvi/Avgv‡`i Ávb I wek¦vmg‡Z mZ¨| ZvwiLt  ",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbold,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 25),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 130,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.end,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("njdKvix/njdKvixM‡Yi ¯^v¶i|",
              style: pw.TextStyle(
                  fontSize: 14, font: ttfbold, color: PdfColors.black)),
          pw.SizedBox(height: 2),
          pw.Container(
              width: 145,
              height: 0.5,
              margin: pw.EdgeInsets.symmetric(horizontal: 3),
              color: PdfColors.black)
        ],
      ),
    ));
    widgets.add(
      pw.SizedBox(height: 15),
    );

    widgets.add(
      pw.Container(
        margin: pw.EdgeInsets.only(left: 130, right: 170),
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text("mbv³Kvixi †NvlYv: ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 4),
              pw.Container(width: 95, height: 0.5, color: PdfColors.black),
              pw.SizedBox(height: 2),
              pw.Text(
                  "GB g‡g© †NvlYv Kwi‡ZwQ †h, njdKvix/ njdKvixMY Avgvi cwiwPZ Ges Avgvi m¤§y‡L wZwb/Zvnviv `wj‡j ¯^v¶i cÖ`vb Kwiqv‡Qb (ev Avwg Zvnvi ev Zvnv‡`i ev .... bs µwgKavix njdKvixi bvg ÔeÕ Kj‡g wjwLqv w`qvwQ)| ",
                  textAlign: pw.TextAlign.justify,
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 25),
              pw.Text("mbv³Kvixi ¯^v¶i :",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 2),
              pw.Container(width: 95, height: 0.5, color: PdfColors.black),
              pw.SizedBox(height: 2),
              pw.SizedBox(height: 45),
            ]),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 25),
    );
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin:
      const pw.EdgeInsets.only(top: 50, left: 20, right: 40, bottom: 50),
      build: (context) => widgets,
      header: (context) => pw.Container(
        margin: const pw.EdgeInsets.only(left: 130, bottom: 10),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          children: [
            pw.Text(
              "(cvZv-${context.pageNumber})",
              style: pw.TextStyle(
                  fontSize: 12, font: ttfbold, color: PdfColors.black),
            ),
          ],
        ),
      ),
    ));


    final file = File("/storage/emulated/0/Download/Form${DateFormat('dd-MMM-yyyy-jms').format(DateTime.now())}.pdf");

    final pdfBytes = await pdf.save();
    await file.writeAsBytes(pdfBytes.toList());

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("File Downloaded"),
    ));
  }
}
