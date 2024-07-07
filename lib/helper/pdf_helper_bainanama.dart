import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/Files9.dart';
import '../models/generalinfoModel.dart';

class PdfHelper_bainanama_shadharonproof {
  static generate(
      Files9 filesss,
      List<GeneralModel> generalInfo1stparty,
      List<GeneralModel> generalInfo2ndparty,BuildContext context) async {
    final pdf = pw.Document();

    final fonts =
        await rootBundle.load("assets/font/SutonnyMJ/SutonnyMJ-Bold.ttf");
    final fontss = await rootBundle
        .load("assets/font/arial/arialsb.ttf");
    final ccc = pw.Font.ttf(fontss);
    final ttfbold = pw.Font.ttf(fonts);
    List<pw.Widget> widgets = [];

    widgets.add(
      pw.SizedBox(height: 5),
    );
    widgets.add(
      pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: 140,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Container(
                  child: pw.Column(
                    children: [
                      pw.Text("evqbvcÎ",
                          style: pw.TextStyle(
                              fontSize: 16,
                              font: ttfbold,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black)),
                      pw.SizedBox(height: 2),
                      pw.Container(
                          width: 50, height: 0.5, color: PdfColors.black)
                    ],
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(width: 10),
          pw.Expanded(
            child: pw.Container(
                child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Text("evqbv `wjj MÖnxZvi 1g c‡¶i bvg I wVKvbv:",
                    style: pw.TextStyle(
                        fontSize: 16,
                        font: ttfbold,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.black)),
                pw.SizedBox(height: 2),
                pw.Container(width: 220, height: 0.5, color: PdfColors.black),
              ],
            )),
          ),
        ],
      ),
    );
    for (int i = 0; i < generalInfo1stparty.length; i++) {
      GeneralModel sss = generalInfo1stparty[i];
      widgets.add(
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            i == 0
                ? pw.Container(
                    child: pw.Column(children: [
                      pw.SizedBox(
                        width: 140,
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.center,
                            children: [
                              pw.Text("g~j¨ gs- ${filesss.mullo}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      font: ttfbold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 2),
                              pw.Text("evqbv gs- ${filesss.baina}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      font: ttfbold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 2),
                              pw.Text("Aewkó gs- ${filesss.baki}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      font: ttfbold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 2),
                              pw.Text("_vbv- ${filesss.tofshilThana2}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      font: ttfbold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 2),
                              pw.Text("†Rjv-wm‡jU|",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      font: ttfbold,
                                      color: PdfColors.black)),
                            ]),
                      ),
                    ]),
                    margin: const pw.EdgeInsets.only(right: 10))
                : pw.SizedBox(width: 150),
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
          margin: const pw.EdgeInsets.only(left: 150),
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
      pw.SizedBox(height: 2),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 150),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              " -------------------------------------------1g cÿ ",
              style: pw.TextStyle(
                  fontSize: 14, font: ttfbold, color: PdfColors.black),
            ),
          ],
        ),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 6),
    );
    for (int i = 0; i < generalInfo2ndparty.length; i++) {
      GeneralModel sss = generalInfo2ndparty[i];
      widgets.add(
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(width: 150),
            pw.Expanded(
              child: pw.Column(
                children: [
                  i == 0
                      ? pw.Row(children: [
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                  "evqbv `wjj MÖnxZvi 2q c‡¶i bvg I wVKvbv:",
                                  style: pw.TextStyle(
                                      fontSize: 16,
                                      font: ttfbold,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 2),
                              pw.Container(
                                  width: 220,
                                  height: 0.5,
                                  color: PdfColors.black)
                            ],
                          ),
                          pw.Expanded(child: pw.SizedBox())
                        ])
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
          margin: const pw.EdgeInsets.only(left: 150),
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
      pw.SizedBox(height: 2),
    );
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 150),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              " ------------------------------------------2q cÿ| ",
              style: pw.TextStyle(
                  fontSize: 14, font: ttfbold, color: PdfColors.black),
            ),
          ],
        ),
      ),
    );
    widgets.add(
      pw.SizedBox(height: 10),
    );
    String des1 =
        " cig KiæYvg‡qi bvg ¯§iY Kwiqv wb¤œ Zcwkj ewY©Z f~wgi evqbv cÎ `wj‡ji eY©bv Kiv hvB‡Z‡Q †h, †Rjv- ${filesss.tofshildistrict1}, _vbv -  ${filesss.tofshilThana2} I  ${filesss.bhumioffice} m`‡ii GjvKvaxb,  ${filesss.descriptionone}";
    widgets.add(
      pw.Container(
        margin: const pw.EdgeInsets.only(left: 150),
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
        margin: const pw.EdgeInsets.only(left: 150),
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

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 150,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("Zckxj I PZztmxgv",
              style: pw.TextStyle(
                  fontSize: 16,
                  font: ttfbold,
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
                  "     †Rjv-${filesss.tofshildistrict1}, _vbv-${filesss.tofshilThana2}, Dc‡Rjv-${filesss.tofshilupozila3}, †gŠRv-${filesss.tofshilmouja4}, †R, Gj bs-Gm,G-${filesss.tofshiljlnoSA5}, hvnvi we.Gm-${filesss.tofshiljaharBs6}, Gm,G LwZqvb b¤^i${filesss.tofshilSAkhotianNo7}, bvgRvix LwZqvb bs- ${filesss.tofshilNamzariKhotianNo8}, hvnvi we.Gm-eyRviZ LwZqvb bs- ${filesss.tofshiljaharBSBujaritokhotiannumber9}, bvgRvix LwZqvb bs- ${filesss.tofshiljaharBSDP10}, hvnvi we.Gm-wW,wc${filesss.tofshilAdaagNo12}, hvnvi we.Gm- ${filesss.tofshiljaharBs13} bs `v‡M †gvqvwR ${filesss.tofshilMouaji14} mvBj iKg f~wg|\n     hvnvi †PŠnvÏv: DË‡i-${filesss.tofshilchouhaddauttor}, c~‡e©-${filesss.tofshilchouhaddadokshin}, c~‡e©-${filesss.tofshilchouhaddapurba}, cwð‡g-${filesss.tofshilchouhaddaposchim}| Bnv‡Z Dc‡iv³ LwZqvb I `v‡M Ges AÎ PZztmxgvi AšÍM©Z †gvqvwR ${filesss.tofshilMouaji14}mvBj iKg f~wgi evqbv evwZjK…Z e‡U|",
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
      pw.SizedBox(height: 25),
    );

    for (int i = 0; i < filesss.sakkhi.length; i++) {
      widgets.add(
        pw.Container(
            margin: const pw.EdgeInsets.only(left: 0),
            child: pw.Row(children: [
              pw.SizedBox(
                width: 150,
                child: i == 0
                    ? pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.center,
                        children: [
                          pw.Text("‡gvmvwe`vKvix",
                              style: pw.TextStyle(
                                  fontSize: 16,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 8),
                          pw.Text("gvneyeyi ingvb",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 4),
                          pw.Text("`wjj †jLK",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 4),
                          pw.Text("mb` b¤^vi t 186",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 4),
                          pw.Text("m`i mve-‡iwR÷ªvi Awdm,",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 4),
                          pw.Text("wm‡jU|",
                              style: pw.TextStyle(
                                  fontSize: 14,
                                  font: ttfbold,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.black)),
                          pw.SizedBox(height: 4)
                        ],
                      )
                    : pw.SizedBox(),
              ),
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    i == 0
                        ? pw.Text("mv¶x/mv¶xM‡Yi bvg, wVKvbv I ¯^v¶i :",
                            style: pw.TextStyle(
                                fontSize: 16,
                                font: ttfbold,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.black))
                        : pw.SizedBox(),
                    i == 0 ? pw.SizedBox(height: 2) : pw.SizedBox(),
                    i == 0
                        ? pw.Container(
                            width: 200, height: 0.5, color: PdfColors.black)
                        : pw.SizedBox(),
                    pw.SizedBox(height: 5),
                    pw.Text("(${i + 1})",
                        style: pw.TextStyle(
                            fontSize: 16,
                            font: ttfbold,
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
      pw.SizedBox(height: 50),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 150,
      ),
      width: double.infinity,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        children: [
          pw.Text("njdbvgv",
              style: pw.TextStyle(
                  fontSize: 16,
                  font: ttfbold,
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
    String ss =
        "      eivei, ${filesss.bhumioffice}, †Rjvt ${filesss.tofshildistrict1}| \n";

    if (generalInfo1stparty.length > 1) {
      for (int i = 0; i < generalInfo1stparty.length; i++) {
        if (i == 0) {
          ss =
              "$ss 1g cÿMYt-  (${i + 1}) ${generalInfo1stparty[i].name}, wcZv-${generalInfo1stparty[i].fathername}, mvwKb-${generalInfo1stparty[i].parmavillage}, WvKNi-${generalInfo1stparty[i].parmapost}, _vbv-${generalInfo1stparty[i].parmathana}, †Rjv-${generalInfo1stparty[i].parmadistrict}\n";
        } else {
          ss =
              "$ss          (${i + 1}) ${generalInfo1stparty[i].name}, wcZv-${generalInfo1stparty[i].fathername}, mvwKb-${generalInfo1stparty[i].parmavillage}, WvKNi-${generalInfo1stparty[i].parmapost}, _vbv-${generalInfo1stparty[i].parmathana}, †Rjv-${generalInfo1stparty[i].parmadistrict}\n";
        }
      }
      ss = "$ss\n\n\n";
    } else {
      ss =
          "$ss 1g cÿt- ${generalInfo1stparty[0].name}, wcZv-${generalInfo1stparty[0].fathername}, mvwKb-${generalInfo1stparty[0].parmavillage}, WvKNi-${generalInfo1stparty[0].parmapost}, _vbv-${generalInfo1stparty[0].parmathana}, †Rjv-${generalInfo1stparty[0].parmadistrict}\n\n\n\n";
    }

    if (generalInfo2ndparty.length > 1) {
      for (int i = 0; i < generalInfo2ndparty.length; i++) {
        if (i == 0) {
          ss =
              "$ss 2q cÿMYt- (${i + 1}) ${generalInfo2ndparty[i].name}, wcZv-${generalInfo2ndparty[i].fathername}, mvwKb-${generalInfo2ndparty[i].parmavillage}, WvKNi-${generalInfo2ndparty[i].parmapost}, _vbv-${generalInfo2ndparty[i].parmathana}, †Rjv-${generalInfo2ndparty[i].parmadistrict}\n";
        } else {
          ss =
              "$ss         (${i + 1}) ${generalInfo2ndparty[i].name}, wcZv-${generalInfo2ndparty[i].fathername}, mvwKb-${generalInfo2ndparty[i].parmavillage}, WvKNi-${generalInfo2ndparty[i].parmapost}, _vbv-${generalInfo2ndparty[i].parmathana}, †Rjv-${generalInfo2ndparty[i].parmadistrict}\n";
        }
      }
      ss = "$ss\n\n\n";
    } else {
      ss =
          "$ss 2q cÿt- ${generalInfo2ndparty[0].name}, wcZv-${generalInfo2ndparty[0].fathername}, mvwKb-${generalInfo2ndparty[0].parmavillage}, WvKNi-${generalInfo2ndparty[0].parmapost}, _vbv-${generalInfo2ndparty[0].parmathana}, †Rjv-${generalInfo2ndparty[0].parmadistrict}\n\n\n\n";
    }
    ss =
        "${ss}GB g‡g© †NvlYvc~e©K njdbvgv cÖ`vb Kwi‡ZwQ †h, Avwg/Avgiv evsjv‡`‡ki bvMwiK|\nAvwg/Avgiv †NvlYv Kwi‡ZwQ †h,\n\n\n\n(K) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k `vjvj (we‡kl UªvBey¨bvj) Av‡`k, 1972 (1972 m‡bi wc. I bs 8) Gi Aaxb †µv‡Ki AvIZvaxb b‡n;\n\n(L) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË evsjv‡`k cwiZ¨³ m¤úwË (wbqš¿Y, e¨e¯’vcbv I wb¯úwË) Av‡`k, 1972 (1972 m‡bi wc.I bs 16) Gi A_©vbyhvqx cwiZ¨³ m¤úwË b‡n;\n\n(M) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwË AvcvZZt ejer †Kvb AvB‡bi Aaxb miKv‡i eZ©vq bvB, ev miKv‡ii AbyK‚‡j ev‡Rqvß nq bvB;\n\n(N) cÖ¯ÍvweZ n¯ÍvšÍi AvcvZZt ejer Ab¨ †Kvb AvB‡bi †Kvb weav‡bi mwnZ mvsNwl©K b‡n;\n\n(O) cÖ¯ÍvweZ n¯ÍvšÍi evsjv‡`k j¨vÛ †nvwìs (wjwg‡Ukb) Av‡`k, 1972 (1972 m‡bi wc. I bs 98) Gi Aby‡”Q` 5 G Abyhvqx evwZj‡hvM¨ b‡n; Ges\n\n(P) n¯ÍvšÍ‡ii Rb¨ cÖ¯ÍvweZ ¯’vei m¤úwËi weeiY mwVKfv‡e ewY©Z nBqv‡Q Ges Dnv Aeg~j¨ Kiv nq bvB Ges DwjøwLZ m¤úwË n¯ÍvšÍiKi‡Y Av‡e`bKvixi ˆea AwaKvi iwnqv‡Q| ";

    widgets.add(
      pw.Container(
        margin: pw.EdgeInsets.only(left: 150),
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
        margin: pw.EdgeInsets.only(left: 150),
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
      pw.SizedBox(height: 15),
    );

    widgets.add(pw.Container(
      margin: const pw.EdgeInsets.only(
        left: 150,
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
      pw.SizedBox(height: 35),
    );

    widgets.add(
      pw.Container(
        margin: pw.EdgeInsets.only(left: 150, right: 170),
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
              pw.Text("bvg : ${filesss.consonaktokarinaam}",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 4),
              pw.Text("wcZvi bvg : ${filesss.consonaktokaripitarnaam}",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 4),
              pw.Text("wcZvi bvg : ${filesss.consonaktokaripitarnaam}",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              // pw.SizedBox(height: 4),
              // pw.Text(
              //     "gvZvi bvg : ${filesss.consonaktokarimatarnaam}",
              //     style: pw.TextStyle(
              //         fontSize: 14,
              //         font: ttfbold,
              //         fontWeight: pw.FontWeight.bold,
              //         color: PdfColors.black)),
              pw.SizedBox(height: 4),
              pw.Text("mvwKb : ${filesss.consonaktokarithikana}",
                  style: pw.TextStyle(
                      fontSize: 14,
                      font: ttfbold,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.black)),
              pw.SizedBox(height: 20),
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
        margin: const pw.EdgeInsets.only(left: 150, bottom: 10),
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
