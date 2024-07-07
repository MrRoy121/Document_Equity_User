
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../models/Files15.dart';
import '../models/generalinfoModel.dart';

class PdfHelper_powerdeshi_shadharonproof {
  static generate(
      Files15 filesss,
      List<GeneralModel> generalInfo1stparty,
      List<GeneralModel> generalInfo2ndparty,BuildContext context) async {
    final pdf = pw.Document();

    final fonts1 = await rootBundle.load("assets/font/arial/arialsb.ttf");
    final ccc = pw.Font.ttf(fonts1);
    final fonts =
        await rootBundle.load("assets/font/SutonnyMJ/SutonnyMJ-Bold.ttf");
    final fontss = await rootBundle
        .load("assets/font/SutonnyMJ/SutonnyMJ-Bold-Italic.ttf");
    final ttfbolditalic = pw.Font.ttf(fontss);
    final ttfbold = pw.Font.ttf(fonts);
    List<pw.Widget> widgets = [];
    widgets.add(
      pw.SizedBox(height: 5),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        padding: const pw.EdgeInsets.symmetric(vertical: 10),
        decoration: pw.BoxDecoration(
            border: pw.Border.all(width: 1, color: PdfColors.black)),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
          children: [
            pw.Text("µwgK b¤^i t .......",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
            pw.Text("ewn b¤^i t  .......",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
            pw.Text("`wjj b¤^i t .......",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
            pw.Text("mb t .......",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
            pw.Text("ZvwiL t .......",
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbolditalic,
                    lineSpacing: 5,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black)),
          ],
        ),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 30),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Text("   Kvh©vj‡qi bvg I wVKvbvt ${filesss.registryoffice}|",
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
    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(left: 110),
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
                flex: 4),
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
                flex: 3),
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
            pw.Expanded(
                child: pw.Container(
                  margin: const pw.EdgeInsets.symmetric(vertical: 4),
                  alignment: pw.Alignment.center,
                  child: pw.Text("cY g~j¨\n(hw` _v‡K)",
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbold,
                      )),
                ),
                flex: 3),
          ], decoration: const pw.BoxDecoration(color: PdfColors.grey200)),
          pw.TableRow(
              verticalAlignment: pw.TableCellVerticalAlignment.middle,
              children: [
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text("AcÖZ¨vnvi‡hvM¨ cvIqvi Ae A¨vUwb©",
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
                      child: pw.Column(children: [
                        pw.Text(filesss.contofshilmouja3,
                            textAlign: pw.TextAlign.center,
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                        pw.SizedBox(height: 2),
                        pw.Text("†R.Gj bs-\nGm.G- ${filesss.contofshiljlnoSA4}",
                            textAlign: pw.TextAlign.center,
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                        pw.SizedBox(height: 2),
                        pw.Text("we.Gm- ${filesss.contofshiljaharBsjl5}",
                            textAlign: pw.TextAlign.center,
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                        pw.SizedBox(height: 2),
                      ]),
                    ),
                    flex: 3),
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text(filesss.contofshilunion0,
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
                      child: pw.Text(filesss.contofshilThana2,
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
                      child: pw.Text(filesss.contofshildistrict1,
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
                      child: pw.Text(filesss.conpon,
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 3),
              ]),
        ],
        border: pw.TableBorder.all(width: 1, color: PdfColors.black),
      ),
    ));
    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110, bottom: 5),
        child: pw.Text("1| m¤úv`‡bi ZvwiLt ${filesss.consompadonertarik}",
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 5,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 25),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Text("2| cvIqvi `vZv/`vZvM‡Yi bvg I cwiwPwZt ",
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
            pw.SizedBox(width: 110),
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
                      ? pw.Row(
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
          margin: const pw.EdgeInsets.only(left: 110),
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
            pw.SizedBox(width: 110),
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  i == 0
                      ? pw.Text("3| cvIqvi MÖnxZv/MÖnxZvM‡Yi bvg I cwiwPwZt ",
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
                      ? pw.Row(
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
          margin: const pw.EdgeInsets.only(left: 110),
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

    String ss3 =
        "4| cvIqvi `vZv Ges cvIqvi MÖnxZv Df‡qi RvZxq cwiPqc‡Îi ev Rb¥-wbeÜb mb‡`i ev cÖ‡qvR¨ †¶‡Î cvm‡cv‡U©i b¤^i mn Dnvi d‡UvKwc: ";
    if (generalInfo1stparty.length > 1) {
      for (int i = 0; i < generalInfo1stparty.length; i++) {
        if (generalInfo1stparty[i].passportnumber.isNotEmpty) {
          ss3 =
              "$ss3\n($i) cvIqvi `vZvi cvm‡cvU©s bs- ${generalInfo1stparty[i].passportnumber}";
        }
        if (generalInfo1stparty[i].nationalidnumber.isNotEmpty) {
          ss3 =
              "$ss3\n($i) cvIqvi `vZvi RvZxq cwiPqcÎ bs- ${generalInfo1stparty[i].nationalidnumber}";
        }
      }
    } else {
      if (generalInfo1stparty[0].passportnumber.isNotEmpty) {
        ss3 =
            "$ss3\ncvIqvi `vZvi cvm‡cvU©s bs- ${generalInfo1stparty[0].passportnumber}";
      }
      if (generalInfo1stparty[0].nationalidnumber.isNotEmpty) {
        ss3 =
            "$ss3\ncvIqvi `vZvi RvZxq cwiPqcÎ bs- ${generalInfo1stparty[0].nationalidnumber}";
      }
    }
    ss3 = "$ss3\n";
    if (generalInfo2ndparty.length > 1) {
      for (int i = 0; i < generalInfo2ndparty.length; i++) {
        if (generalInfo2ndparty[0].passportnumber.isNotEmpty) {
          ss3 =
              "$ss3\n($i) cvIqvi MÖnxZvi cvm‡cvU©s bs- ${generalInfo2ndparty[0].passportnumber}";
        }
        if (generalInfo2ndparty[0].nationalidnumber.isNotEmpty) {
          ss3 =
              "$ss3\n($i) cvIqvi MÖnxZvi RvZxq cwiPqcÎ bs- ${generalInfo2ndparty[0].nationalidnumber}";
        }
      }
    } else {
      if (generalInfo2ndparty[0].passportnumber.isNotEmpty) {
        ss3 =
            "$ss3\ncvIqvi MÖnxZvi cvm‡cvU©s bs- ${generalInfo2ndparty[0].passportnumber}";
      }
      if (generalInfo2ndparty[0].nationalidnumber.isNotEmpty) {
        ss3 =
            "$ss3\ncvIqvi MÖnxZvi RvZxq cwiPqcÎ bs- ${generalInfo2ndparty[0].nationalidnumber}";
      }
    }

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
            text: ss3,
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbolditalic,
                lineSpacing: 7,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black)),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "5| `wj‡j c¶M‡Yi AwfcÖvq cÖwZdj‡bi cÖ‡qvRbxq Z_¨vw`mn cvIqvi `vZv KZ©„K cÖ‡`q we‡kl, mvaviY ev AcÖZ¨vnvi‡hvM¨ ¶gZv Ges cvIqvi MÖnxZv KZ©„K m¤úvw`Ze¨ `vwqZ¡ I KZ©e¨mg~‡ni we¯ÍvwiZ weeiY: \n ${filesss.descriptionone}",
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

    String des1 =
        "6| ¯’vei m¤úwË weµq, weµ‡qi Pzw³ ev FY MÖn‡Yi wewbg‡q eÜK cÖ`vb msµvšÍ ¶gZv cÖ`Ë nB‡j Dnvi weeiYmn m¤úwËi Zdwmj eY©bv; A_ev f~wg Dbœqb msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j, Dnvi weeiY I Dnv‡Z m„wRZe¨ cø‡Ui ev wbwg©Ze¨ fe‡bi we¯ÍvwiZ weeiYmn m¤úwËi Zdwmj eY©bv; A_ev f~wg Dbœqb e¨wZZ ¯’vei m¤úwË e¨e¯’vcbv msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j Dnvi weeiYmn m¤úwËi Zdwmj eY©bv; A_ev cÖ‡hvR¨ †¶‡Î m¤úwËi Zdwmj eY©bv: \n     †Rjv- ${filesss.contofshildistrict1}, _vbv- ${filesss.contofshilThana2}, ${filesss.registryoffice} Gi GjvKvaxb, ${filesss.descriptiontwo}";
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
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

    // widgets.add(
    //   pw.SizedBox(height: 10),
    // );
    //
    //   widgets.add(
    //     pw.Container(
    //       margin: const pw.EdgeInsets.only(left: 110),
    //       child: pw.Paragraph(
    //         text: filesss.descriptiontwo,
    //         textAlign: pw.TextAlign.justify,
    //         style: pw.TextStyle(
    //             fontSize: 14,
    //             font: ttfbold,
    //             lineSpacing: 5,
    //             color: PdfColors.black),
    //       ),
    //     ),
    //   );

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 110,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("Zckxj I PZztmxgv",
              style: pw.TextStyle(
                  fontSize: 16,
                  font: ttfbolditalic,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 2),
          pw.Container(
              width: 100,
              height: 0.5,
              margin: pw.EdgeInsets.symmetric(horizontal: 3),
              color: PdfColors.black),
          pw.SizedBox(height: 5),
          pw.Paragraph(
              text:
                  "     †Rjv-${filesss.contofshildistrict1}, _vbv-${filesss.contofshilThana2}, †gŠRv-${filesss.contofshilmouja3}, †R, Gj bs-Gm,G-${filesss.contofshiljlnoSA4}, we.Gm †R.Gj bs-${filesss.contofshiljaharBsjl5}, w¯’Z LwZqvb bs- Gm.G- ${filesss.contofshilStithokhotianNo6}, bvgRvix-  ${filesss.contofshilNamzariKhotianNo7}, ${filesss.contofshilDageMouaji8}|\n     ${filesss.contofshilMotMouaji9}|",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbold,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ],
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 10),
    );
    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 110,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("PZztmxgv",
              style: pw.TextStyle(
                  fontSize: 16,
                  font: ttfbolditalic,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
          pw.SizedBox(height: 3),
          pw.Container(width: 50, height: 0.5, color: PdfColors.black),
          pw.SizedBox(height: 5),
          pw.Paragraph(
              text:
                  "DË‡it ${filesss.contofshilchouhaddauttor}, `wÿ‡Yt ${filesss.contofshilchouhaddadokshin}, c~‡e©t ${filesss.contofshilchouhaddapurba}, `wÿ‡Yt ${filesss.contofshilchouhaddaposchim}|",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbold,
                  lineSpacing: 5,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ],
      ),
    ));

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "7| f~wg Dbœqb msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j, cÖ¯ÍvweZ f~wg Dbœqb Kvh© m¤ú‡bœi ci Dnv nB‡Z AwR©Z †h Ask cvIqvi MÖnxZv cøU, BgviZ ev †¯úm AvKv‡i weµq ev n¯ÍvšÍ‡ii ¶gZvcÖvß nB‡eb Dnvi weeiY: ${filesss.conchotushima7}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "8| cÖ‡hvR¨ †¶‡Î AvB‡bi aviv 2 (2) Abymv‡i m¤úwËi cYg~j¨: ${filesss.conchotushima8}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "9| cÖ‡hvR¨ †¶‡Î cvIqvi `vZv KZ©„K M„nxZ †Kvb A_©, hw` _v‡K, ev †Kvb Avw_©K †jb-‡`b nq, Z‡e Dnvi weeiY: ${filesss.conchotushima9}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "10| Avw_©K `vq I `vwqZ¡, hw` _v‡K, Dnvi weeiY:${filesss.conchotushima10}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "11| cÖ‡`q ¶gZv cÖ‡qv‡Mi wbw`©ó †gqv`, cÖ‡hvR¨ †¶‡Î: ${filesss.conchotushima11}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "12| cvIqvi `vZv GKvwaK nB‡j Zvnviv †hŠ_fv‡e, ev c„_Kfv‡e ¶gZv cÖ`vb Kwiqv‡Qb wK bv Dnvi weeiY; Ges wbhy³ A¨vUwb© GKvwaK nB‡j Zvnviv †hŠ_fv‡e, ev c„_Kfv‡e A_ev †hŠ_ I c„_K Dfqfv‡eB Kvh© m¤úv`‡bi ¶gZvcÖvß nBqv‡Qb wKbv Dnvi weeiY: ${filesss.conchotushima12}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "13| c¶M‡Yi AwfcÖvq cÖwZdj‡bi wbwgË Ab¨ †Kvb Z_¨ ev we‡kl kZ©, cÖ‡hvR¨ †¶‡Î: ${filesss.conchotushima13}|",
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
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text: "14| cvIqvi MÖnxZvi m¤§wZm~PK ¯^v¶i :",
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
      pw.SizedBox(height: 30),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text: "15| cvIqvi `vZv/`vZvM‡Yi bvg I ¯^v¶i : ",
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
      pw.SizedBox(height: 30),
    );

    for (int i = 0; i < filesss.sakkhi.length; i++) {
      widgets.add(
        pw.Container(
            margin: const pw.EdgeInsets.only(left: 110),
            child: pw.Row(children: [
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    i == 0
                        ? pw.Text(
                            "16| Ab~b¨ 2 (`yB) Rb ¯^v¶xi bvg, cwiwPwZ I ¯^v¶i :",
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
      pw.SizedBox(height: 30),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Column(children: [
          pw.SizedBox(height: 15),
          pw.Container(
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                pw.Text(
                    "17| gymvwe`vKvix ev †jL‡Ki bvg, cwiwPwZ I ¯^v¶i (cÖ‡hvR¨ †¶‡Î):",
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
                        color: PdfColors.black)),
              ])),
          pw.SizedBox(height: 10),
        ]),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );
    String ss =
        "\n\n18| cvIqvi `vZv KZ©„K ev Zvnvi c‡¶ cÖ`Ë njdbvgv : \n      eivei, ${filesss.registryoffice}, †Rjvt ${filesss.contofshildistrict1}| \n";
    if (generalInfo2ndparty.length > 1) {
      for (int i = 0; i < generalInfo2ndparty.length; i++) {
        if (generalInfo2ndparty[1].presentaddress.length > 2) {
          ss =
              "$ss (${i + 1}) ${generalInfo2ndparty[1].name}, wcZv-${generalInfo2ndparty[1].fathername}, mvwKb-${generalInfo2ndparty[1].parmavillage}, WvKNi-${generalInfo2ndparty[1].parmapost}, _vbv-${generalInfo2ndparty[1].parmathana}, †Rjv-${generalInfo2ndparty[1].parmadistrict}| eZ©gvb wVKvbv-${generalInfo2ndparty[1].presentaddress}\n";
        } else {
          ss =
              "$ss (${i + 1}) ${generalInfo2ndparty[1].name}, wcZv-${generalInfo2ndparty[1].fathername}, mvwKb-${generalInfo2ndparty[1].parmavillage}, WvKNi-${generalInfo2ndparty[1].parmapost}, _vbv-${generalInfo2ndparty[1].parmathana}, †Rjv-${generalInfo2ndparty[1].parmadistrict}\n";
        }
      }
      ss = "$ss\n\n";
    } else {
      if (generalInfo2ndparty[0].presentaddress.length > 2) {
        ss =
            "$ss${generalInfo2ndparty[0].name}, wcZv-${generalInfo2ndparty[0].fathername}, mvwKb-${generalInfo2ndparty[0].parmavillage}, WvKNi-${generalInfo2ndparty[0].parmapost}, _vbv-${generalInfo2ndparty[0].parmathana}, †Rjv-${generalInfo2ndparty[0].parmadistrict}| eZ©gvb wVKvbv-${generalInfo2ndparty[0].presentaddress}\n\n\n";
      } else {
        ss =
            "$ss${generalInfo2ndparty[0].name}, wcZv-${generalInfo2ndparty[0].fathername}, mvwKb-${generalInfo2ndparty[0].parmavillage}, WvKNi-${generalInfo2ndparty[0].parmapost}, _vbv-${generalInfo2ndparty[0].parmathana}, †Rjv-${generalInfo2ndparty[0].parmadistrict}\n\n\n";
      }
    }
    ss =
        "${ss}GB g‡g© †NvlYvc~e©K njdbvgv cÖ`vb Kwi‡ZwQ †h, Avwg/Avgiv evsjv‡`‡ki bvMwiK|\nAvwg/Avgiv †NvlYv Kwi‡ZwQ †h,\n\n\n\n(K) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k `vjvj (we‡kl UªvBey¨bvj) Av‡`k, 1972 (1972 m‡bi wc. I bs 8) Gi Aaxb †µv‡Ki AvIZvaxb b‡n;\n\n(L) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k cwiZ¨³ m¤úwË (wbqš¿Y, e¨e¯’vcbv I wb¯úwË) Av‡`k, 1972 (1972 m‡bi wc.I bs 16) Gi A_©vbyhvqx cwiZ¨³ m¤úwË b‡n;\n\n(M) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË AvcvZZt ejer †Kvb AvB‡bi Aaxb miKv‡i eZ©vq bvB, ev miKv‡ii AbyK‚‡j ev‡Rqvß nq bvB;\n\n(N) cÖ¯ÍvweZ n¯ÍvšÍi AvcvZZt ejer Ab¨ †Kvb AvB‡bi †Kvb weav‡bi mwnZ mvsNwl©K b‡n;\n\n(O) cÖ¯ÍvweZ n¯ÍvšÍi evsjv‡`k j¨vÛ †nvwìs (wjwg‡Ukb) Av‡`k, 1972 (1972 m‡bi wc. I bs 98) Gi Aby‡”Q` 5 G Abyhvqx evwZj‡hvM¨ b‡n; Ges\n\n(P) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwËi weeiY mwVKfv‡e ewY©Z nBqv‡Q Ges Dnv Aeg~j¨ Kiv nq bvB Ges DwjøwLZ m¤úwË n¯ÍvšÍiKi‡Y Av‡e`bKvixi ˆea AwaKvi iwnqv‡Q| ";

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
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
        margin: pw.EdgeInsets.only(left: 110),
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
        left: 110,
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
        margin: pw.EdgeInsets.only(left: 110, right: 170),
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
      pw.SizedBox(height: 10),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 110,
      ),
      child: pw.Text("19| mve-‡iwR÷ªv‡ii bvg, c`wehy³ wmj I ZvwiLmn ¯^v¶it",
          style: pw.TextStyle(
              fontSize: 14,
              font: ttfbold,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black)),
    ));

    widgets.add(
      pw.SizedBox(height: 25),
    );
    pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin:
          const pw.EdgeInsets.only(top: 50, left: 20, right: 40, bottom: 50),
      build: (context) => widgets,
      header: (context) => pw.Container(
        margin: const pw.EdgeInsets.only(left: 110, bottom: 10),
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
