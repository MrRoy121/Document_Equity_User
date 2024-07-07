import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/Files16.dart';
import '../models/generalinfoModel.dart';

class PdfHelper_powerbideshi_shadharonproof {
  static generate(
      Files16 filesss,
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
        padding: const pw.EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: pw.BoxDecoration(
            border: pw.Border.all(width: 1, color: PdfColors.black)),
        child: pw.Column(children: [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text("µwgK b¤^it-            ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.Text("ZvwiLt-            ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
            ],
          ),
          pw.SizedBox(height: 10),
          pw.Paragraph(
              text:
                  "mswkøó †bvUvwi cvewjK ev †Kvb †KvU©, RR, g¨vwR‡÷ªU, evsjv‡`‡ki Kbmvj ev fvBm Kbmvj ev miKv‡ii cÖwZwbwai bvg I wVKvbvt-                       \n",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 7,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ]),
      ),
    );

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        padding: const pw.EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: pw.BoxDecoration(
            border: pw.Border.all(width: 1, color: PdfColors.black)),
        child: pw.Column(children: [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text("µwgK b¤^it-            ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.Text("ewn b¤^it-            ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.Text("`wjj b¤^it-            ",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
            ],
          ),
          pw.SizedBox(height: 10),
          pw.Paragraph(
              text:
                  "mswkøó mve-‡iwR÷ªvi-Gi Kvh©vj‡qi bvg I wVKvbvt ${filesss.registryoffice}|",
              style: pw.TextStyle(
                  fontSize: 14,
                  font: ttfbolditalic,
                  lineSpacing: 7,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black)),
        ]),
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
                        pw.Text(filesss.tofshil[0]["Mouja"],
                            textAlign: pw.TextAlign.center,
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                        pw.SizedBox(height: 2),
                        pw.Text(
                            "†R.Gj bs-\nGm.G- ${filesss.tofshil[0]["JLSA"]}",
                            textAlign: pw.TextAlign.center,
                            style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbold,
                            )),
                        pw.SizedBox(height: 2),
                        pw.Text("we.Gm- ${filesss.tofshil[0]["JLBS"]}",
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
                      child: pw.Text(filesss.tofshil[0]["Thana"],
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
                      child: pw.Text(filesss.tofshil[0]["District"],
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
      pw.SizedBox(height: 15),
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
                  ) : pw.SizedBox(),
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
                  ) : pw.SizedBox(),
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

    String ss3 = "4| cvIqvi `vZv/`vZvM‡Yi cvm‡cv‡U©i weeiYt ";
    if (generalInfo1stparty.length > 1) {
      for (int i = 0; i < generalInfo1stparty.length; i++) {
        widgets.add(
          pw.Container(
            margin: const pw.EdgeInsets.only(left: 110),
            child: pw.RichText(
              text: pw.TextSpan(
                children: <pw.TextSpan>[
                  i == 0
                      ? pw.TextSpan(
                          text:
                              "4| cvIqvi `vZv/`vZvM‡Yi cvm‡cv‡U©i weeiYt \n    (1) ${generalInfo1stparty[0].name}",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbolditalic,
                              fontWeight: pw.FontWeight.bold,
                              lineSpacing: 8,
                              color: PdfColors.black))
                      : pw.TextSpan(
                          text: "\n    ($i) ${generalInfo1stparty[i].name}",
                          style: pw.TextStyle(
                              fontSize: 14,
                              font: ttfbolditalic,
                              fontWeight: pw.FontWeight.bold,
                              lineSpacing: 8,
                              color: PdfColors.black)),
                  pw.TextSpan(
                      text:
                          ' , Passport No- ${generalInfo1stparty[i].passportnumber}\n${filesss.paspt[i]}',
                      style: pw.TextStyle(
                          fontSize: 12,
                          font: ccc,
                          fontWeight: pw.FontWeight.bold,
                          lineSpacing: 8,
                          color: PdfColors.black)),
                ],
              ),
            ),
          ),
        );
      }
    } else {
      widgets.add(
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 110),
          child: pw.RichText(
            text: pw.TextSpan(
              children: <pw.TextSpan>[
                pw.TextSpan(
                    text:
                        "4| cvIqvi `vZv/`vZvM‡Yi cvm‡cv‡U©i weeiYt \n    ${generalInfo1stparty[0].name}",
                    style: pw.TextStyle(
                        fontSize: 14,
                        font: ttfbolditalic,
                        fontWeight: pw.FontWeight.bold,
                        lineSpacing: 8,
                        color: PdfColors.black)),
                pw.TextSpan(
                    text:
                        ' , Passport No- ${generalInfo1stparty[0].passportnumber}\n${filesss.paspt[0]}',
                    style: pw.TextStyle(
                        fontSize: 12,
                        font: ccc,
                        fontWeight: pw.FontWeight.bold,
                        lineSpacing: 8,
                        color: PdfColors.black)),
              ],
            ),
          ),
        ),
      );
    }

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "5| cvIqvi `vZv KZ©„K cÖ‡`q we‡kl, mvavib ev AcÖZ¨vnvi ‡hvM¨ ¶gZv cÖ`v‡bi D‡Ïk¨ I cÖ‡`q ¶gZvi weeiY Ges cvIqvi MÖnxZv KZ©„K m¤úvw`Ze¨ `vwqZ¡ I Kvh©vejxi we¯ÍvwiZ weeiYt- \n      ${filesss.descriptionone}",
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
              "6| GB cvIqvi Ae A¨vUwb© `wjjwU wewa †gvZv‡eK cvIqvi MÖnxZv KZ©„K mswkøó mve-‡iwR÷ªv‡ii wbKU †iwRwóªi wbwgË `vwLj Kwievi ¶gZv cÖ`vb msµvšÍ weeiYt- \n      ${filesss.descriptiontwo}",
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
        "7| ¯’vei m¤úwË weµq, weµ‡qi Pzw³ ev FY MÖn‡Yi wewbg‡q eÜK msµvšÍ ¶gZv cÖ`Ë nB‡j Dnvi weeiYmn m¤úwËi Zdwmj eY©bv A_ev f~wg Dbœqb msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j, Dnvi weeiY I Dnv‡Z m„wRZ cø‡Ui ev wbwg©Ze¨ fe‡bi we¯ÍvwiZ weeiY mn m¤úwËi Zdwmj eY©bv, A_ev f~wg Dbœqb e¨wZZ ¯’vei m¤úwË e¨e¯’vcbv msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j Dnvi weeiY mn m¤úwËi Zdwmj eY©bv A_ev cÖ‡hvR¨ †¶‡Î m¤úwËi Zdwmj eY©bvt- \n     †Rjv- ${filesss.tofshil[0]["District"]}, _vbv- ${filesss.tofshil[0]["Thana"]}, ${filesss.registryoffice} Gi GjvKvaxb, ${filesss.descriptionthree}";
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

    widgets.add(
      pw.SizedBox(height: 10),
    );

    if (filesss.descriptionfour.length > 10) {
      widgets.add(
        pw.Container(
            margin: const pw.EdgeInsets.only(left: 110),
            child: pw.Column(children: [
              pw.Text("Ges",
                  style: pw.TextStyle(
                      fontSize: 16,
                      font: ttfbolditalic,
                      lineSpacing: 5,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 5),
              pw.Paragraph(
                text: "      ${filesss.descriptionfour}",
                textAlign: pw.TextAlign.justify,
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbold,
                    lineSpacing: 5,
                    color: PdfColors.black),
              ),
              pw.SizedBox(height: 20),
            ])),
      );
    }

    String s1 = "1g", s2 = "2q", s3 = "3q", s4 = "4_©-I", s5 = "5g";
    if (filesss.tofshil.length == 1) {
      widgets.add(pw.Container(
        margin: const pw.EdgeInsets.only(
          left: 110,
        ),
        width: double.infinity,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.center,
          children: [
            pw.Container(
                child: pw.Column(
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
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(height: 10),
                                  pw.Container(
                                    margin: const pw.EdgeInsets.symmetric(
                                        vertical: 4),
                                    child: pw.Text(
                                        "†Rjv- ${filesss.tofshil[0]["District"]}",
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
                                        "_vbv- ${filesss.tofshil[0]["Thana"]}",
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
                                        "IqvW- ${filesss.tofshil[0]["Word"]}",
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
                                        "MÖvg- ${filesss.tofshil[0]["Gram"]}",
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
                                        "f~wg Awd‡mi bvg- ${filesss.tofshil[0]["Bhumi Office"]}",
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
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Container(
                                    margin: const pw.EdgeInsets.symmetric(
                                        vertical: 4),
                                    child: pw.Text(
                                        "‡gŠRv- ${filesss.tofshil[0]["Mouja"]}",
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
                                        "‡R.Gj bs t Gm.- ${filesss.tofshil[0]["JLSA"]}",
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
                                        "†R.Gj bs t we.Gm- ${filesss.tofshil[0]["JLBS"]}",
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
                                        "LwZqvb bs t Gm.G- ${filesss.tofshil[0]["Khotian No"]}",
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
                                        "bvgRvix LwZqvb bs- ${filesss.tofshil[0]["Namzari No"]}",
                                        textAlign: pw.TextAlign.center,
                                        style: pw.TextStyle(
                                          fontSize: 14,
                                          font: ttfbold,
                                        )),
                                  ),
                                  filesss.tofshil[0]["Bujarito No"].isNotEmpty
                                      ? pw.Container(
                                          margin: const pw.EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: pw.Text(
                                              "we.Gm wW.wc LwZqvb bs- ${filesss.tofshil[0]["BSDP No"]}",
                                              textAlign: pw.TextAlign.center,
                                              style: pw.TextStyle(
                                                fontSize: 14,
                                                font: ttfbold,
                                              )),
                                        )
                                      : pw.SizedBox(),
                                  pw.Container(
                                    margin: const pw.EdgeInsets.symmetric(
                                        vertical: 4),
                                    child: pw.Text(
                                        "`vM bst- ${filesss.tofshil[0]["Daag No"]} ${filesss.tofshil[0]["Bhumi Type"]} iKg f~wg cvIqvi Ae A¨vUb©xK…Z e‡U|",
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
                  border: pw.TableBorder.all(width: 1, color: PdfColors.black),
                ),
                pw.SizedBox(height: 10),
              ],
            ))
          ],
        ),
      ));
    } else {
      for (int i = 0; i < filesss.tofshil.length; i++) {
        String hh = s1;
        if (i == 1) {
          hh = s2;
        } else if (i == 2) {
          hh = s3;
        } else if (i == 3) {
          hh = s4;
        } else if (i == 4) {
          hh = s5;
        }
        widgets.add(pw.Container(
          margin: const pw.EdgeInsets.only(
            left: 110,
          ),
          width: double.infinity,
          child: pw.Column(children: [
            pw.Container(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Text("$hh Zckxj I PZztmxgv",
                      style: pw.TextStyle(
                          fontSize: 16,
                          font: ttfbolditalic,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black)),
                  pw.SizedBox(height: 2),
                  pw.Container(
                      width: 120,
                      height: 0.5,
                      margin: pw.EdgeInsets.symmetric(horizontal: 3),
                      color: PdfColors.black),
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
                                          "†Rjv- ${filesss.tofshil[i]["District"]}",
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
                                          "_vbv- ${filesss.tofshil[i]["Thana"]}",
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
                                          "IqvW- ${filesss.tofshil[i]["Word"]}",
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
                                          "MÖvg- ${filesss.tofshil[i]["Gram"]}",
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
                                          "f~wg Awd‡mi bvg- ${filesss.tofshil[i]["Bhumi Office"]}",
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
                                          "‡gŠRv- ${filesss.tofshil[i]["Mouja"]}",
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
                                          "‡R.Gj bs t Gm.- ${filesss.tofshil[i]["JLSA"]}",
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
                                          "†R.Gj bs t we.Gm- ${filesss.tofshil[i]["JLBS"]}",
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
                                          "LwZqvb bs t Gm.G- ${filesss.tofshil[i]["Khotian No"]}",
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
                                          "bvgRvix LwZqvb bs- ${filesss.tofshil[i]["Namzari No"]}",
                                          textAlign: pw.TextAlign.center,
                                          style: pw.TextStyle(
                                            fontSize: 14,
                                            font: ttfbold,
                                          )),
                                    ),
                                    filesss.tofshil[i]["Bujarito No"].isNotEmpty
                                        ? pw.Container(
                                            margin:
                                                const pw.EdgeInsets.symmetric(
                                                    vertical: 4),
                                            child: pw.Text(
                                                "we.Gm wW.wc LwZqvb bs- ${filesss.tofshil[i]["BSDP No"]}",
                                                textAlign: pw.TextAlign.center,
                                                style: pw.TextStyle(
                                                  fontSize: 14,
                                                  font: ttfbold,
                                                )),
                                          )
                                        : pw.SizedBox(),
                                    pw.Container(
                                      margin: const pw.EdgeInsets.symmetric(
                                          vertical: 4),
                                      child: pw.Text(
                                          "`vM bst- ${filesss.tofshil[i]["Daag No"]} ${filesss.tofshil[i]["Bhumi Type"]} iKg f~wg cvIqvi Ae A¨vUb©xK…Z e‡U|",
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
                  pw.SizedBox(height: 10),
                ],
              ),
            ),
          ]),
        ));
      }
    }

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "GKz‡b Dc‡iv³ Zcwk‡j †gvU †gvqvRx- ${filesss.motmouaji} f~wg cvIqvi Ae A¨vUb©xK…Z e‡U|",
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

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 110,
      ),
      width: double.infinity,
      child: pw.Text("hvnvi †PŠnvÏv wbgœiƒc:-",
          style: pw.TextStyle(
              fontSize: 14,
              font: ttfbolditalic,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black)),
    ));

    if (filesss.tofshil.length == 1) {
      widgets.add(pw.Container(
        margin: const pw.EdgeInsets.only(
          left: 110,
        ),
        width: double.infinity,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.center,
          children: [
            pw.SizedBox(height: 10),
            pw.Text(
                "Zcwk‡ji AšÍM©Z ${filesss.tofshil[0]["Daag No"]} f~wgi ‡PŠnvÏvt-   ",
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
                          child: pw.Text("DË‡it ${filesss.tofshil[0]["Uttor"]}",
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
                              pw.Text("`w¶‡Yt ${filesss.tofshil[0]["Dakshin"]}",
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
                              pw.Text("c~‡e©t ${filesss.tofshil[0]["Purba"]}",
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
                              pw.Text("cwð‡gt ${filesss.tofshil[0]["Poshim"]}",
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
            pw.SizedBox(height: 5),
          ],
        ),
      ));
    } else {
      for (int i = 0; i < filesss.tofshil.length; i++) {
        String hh = s1;
        if (i == 1) {
          hh = s2;
        } else if (i == 2) {
          hh = s3;
        } else if (i == 3) {
          hh = s4;
        } else if (i == 4) {
          hh = s5;
        }

        widgets.add(pw.Container(
          margin: const pw.EdgeInsets.only(
            left: 110,
          ),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.SizedBox(height: 10),
              pw.Text(
                  "(${i + 1}) $hh Zcwk‡ji AšÍM©Z ${filesss.tofshil[i]["Daag No"]} f~wgi ‡PŠnvÏvt-   ",
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
                            child:
                                pw.Text("DË‡it ${filesss.tofshil[i]["Uttor"]}",
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
                            child: pw.Text(
                                "`w¶‡Yt ${filesss.tofshil[i]["Dakshin"]}",
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
                                pw.Text("c~‡e©t ${filesss.tofshil[i]["Purba"]}",
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
                            child: pw.Text(
                                "cwð‡gt ${filesss.tofshil[i]["Poshim"]}",
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
              pw.SizedBox(height: 5),
            ],
          ),
        ));
      }
    }
    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "8| f~wg Dbœqb msµvšÍ †Kvb ¶gZv cÖ`Ë nB‡j, cÖ¯ÍvweZ f~wg Dbœqb Kvh© m¤ú‡bœi ci Dnv nB‡Z AwR©Z †h Ask cvIqvi MÖnxZv cøU, BgviZ ev †¯úm AvKv‡i weµq ev n¯ÍvšÍ‡ii ¶gZvcÖvß nB‡eb Dnvi weeiY:${filesss.conchotushima8}|",
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
              "9| cÖ‡hvR¨ †¶‡Î AvB‡bi aviv 2 (2) Abymv‡i m¤úwËi cYg~j¨: ${filesss.conchotushima9}|",
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
              "10| cÖ‡hvR¨ †¶‡Î cvIqvi `vZv KZ©„K M„nxZ †Kvb A_©, hw` _v‡K, ev †Kvb Avw_©K †jb-‡`b nq, Z‡e Dnvi weeiY: ${filesss.conchotushima10}|",
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
              "11| Avw_©K `vq I `vwqZ¡, hw` _v‡K, Dnvi weeiY:${filesss.conchotushima11}|",
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
              "12| cÖ‡`q ¶gZv cÖ‡qv‡Mi wbw`©ó †gqv`, cÖ‡hvR¨ †¶‡Î: ${filesss.conchotushima12}|",
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
              "13| cvIqvi `vZv GKvwaK nB‡j Zvnviv †hŠ_fv‡e, ev c„_Kfv‡e ¶gZv cÖ`vb Kwiqv‡Qb wK bv Dnvi weeiY; Ges wbhy³ A¨vUwb© GKvwaK nB‡j Zvnviv †hŠ_fv‡e, ev c„_Kfv‡e A_ev †hŠ_ I c„_K Dfqfv‡eB Kvh© m¤úv`‡bi ¶gZvcÖvß nBqv‡Qb wKbv Dnvi weeiY: ${filesss.conchotushima13}|",
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
              "14| c¶M‡Yi AwfcÖvq cÖwZdj‡bi wbwgË Ab¨ †Kvb Z_¨ ev we‡kl kZ©, cÖ‡hvR¨ †¶‡Î: ${filesss.conchotushima14}|",
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

    widgets.add(pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Paragraph(
            text: "15| cvIqvi `vZv/`vZvM‡Yi bvg I ¯^v¶i :",
            textAlign: pw.TextAlign.justify,
            style: pw.TextStyle(
                fontSize: 14,
                font: ttfbold,
                lineSpacing: 5,
                color: PdfColors.black),
          ),
          pw.Table(
            children: [
              pw.TableRow(children: [
                pw.Expanded(
                    child: pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text("cvIqvi m¤úv`bKvixi bvg",
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
                      child: pw.Text("mv¶i",
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                    flex: 4),
              ]),
              for (int i = 0; i < generalInfo1stparty.length; i++)
                pw.TableRow(
                    verticalAlignment: pw.TableCellVerticalAlignment.middle,
                    children: [
                      pw.Expanded(
                          child: pw.Container(
                            margin: const pw.EdgeInsets.symmetric(vertical: 4),
                            alignment: pw.Alignment.center,
                            child: pw.Text(generalInfo1stparty[i].name,
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
                            child: pw.Text("      ",
                                textAlign: pw.TextAlign.center,
                                style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                )),
                          ),
                          flex: 4),
                    ]),
            ],
            border: pw.TableBorder.all(width: 1, color: PdfColors.black),
          ),
        ])));

    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Paragraph(
                text: "16| ",
                textAlign: pw.TextAlign.justify,
                style: pw.TextStyle(
                    fontSize: 14,
                    font: ttfbold,
                    lineSpacing: 5,
                    color: PdfColors.black),
              ),
              pw.Table(
                children: [
                  pw.TableRow(children: [
                    pw.Container(
                      margin: const pw.EdgeInsets.symmetric(vertical: 4),
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                          "GW‡fv‡KUevmwjwmUi ev `wjj gymvwe`vKvixi bvg, cwiwPwZ I ¯^v¶i (cÖ‡hvR¨ †¶‡Î)t",
                          textAlign: pw.TextAlign.center,
                          style: pw.TextStyle(
                            fontSize: 14,
                            font: ttfbold,
                          )),
                    ),
                  ]),
                  pw.TableRow(
                      verticalAlignment: pw.TableCellVerticalAlignment.middle,
                      children: [
                        pw.Container(
                          margin: const pw.EdgeInsets.symmetric(vertical: 4),
                          alignment: pw.Alignment.center,
                          height: 70,
                          child: pw.Text("  ",
                              textAlign: pw.TextAlign.center,
                              style: pw.TextStyle(
                                fontSize: 14,
                                font: ttfbold,
                              )),
                        ),
                      ]),
                ],
                border: pw.TableBorder.all(width: 1, color: PdfColors.black),
              ),
            ])));
    widgets.add(
      pw.SizedBox(height: 10),
    );

    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 110),
        child: pw.Paragraph(
          text:
              "17| cÖ‡hvR¨ †¶‡Î cvIqvi `vZvi c‡¶ cÖ`Ë njdbvgv : \n     cvIqvi m¤úv`bKvixi c‡¶ cvIqvi MÖnxZv‡K njdbvgv cÖ`v‡bi AbygwZ cvIqvi\n     `vZv cÖ`vb Kwi‡jb|",
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
          text: "18| Dchy³ Kg©KZ©vi bvg, c`wehy³ wmj I ZvwiLmn Ø^v¶i t-",
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
      pw.SizedBox(height: 60),
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
