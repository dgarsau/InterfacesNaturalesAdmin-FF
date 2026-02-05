// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<FFUploadedFile> generarPdf(List<dynamic> notas) async {
  // Add your function code here!
  final pdf = pw.Document(compress: false);

  pdf.addPage(
    pw.Page(
      margin: const pw.EdgeInsets.all(24),
      build: (context) {
        return pw.Column(
          children: [
            pw.Container(
              width: double.infinity,
              padding: pw.EdgeInsets.all(16),
              color: PdfColors.blue700,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    "Reporte de Alumnos",
                    style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 26,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Container(
                    width: 60,
                    height: 60,
                    //child: pw.Image(image),
                  ),
                ],
              ),
            ),

            pw.SizedBox(height: 20),

            // SEPARADOR
            pw.Container(
              height: 2,
              width: double.infinity,
              color: PdfColors.blue700,
            ),

            pw.SizedBox(height: 20),

            // SUBTÍTULO
            pw.Align(
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                "Listado actualizado:",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.blue800,
                ),
              ),
            ),

            pw.SizedBox(height: 12),

            pw.Table(
              border: pw.TableBorder.all(color: PdfColors.grey600),
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(3),
                2: pw.FlexColumnWidth(1),
              },
              children: [
                pw.TableRow(
                  decoration: pw.BoxDecoration(color: PdfColors.grey300),
                  children: [
                    pw.Padding(
                      padding: pw.EdgeInsets.all(6),
                      child: pw.Text(
                        "Nº",
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.all(6),
                      child: pw.Text(
                        "Nombre del Alumno",
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.all(6),
                      child: pw.Text(
                        "Nota",
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                ...List.generate(
                  notas.length,
                  (i) => pw.TableRow(
                    children: [
                      pw.Padding(
                        padding: pw.EdgeInsets.all(6),
                        child: pw.Text("${i + 1}"),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(6),
                        child: pw.Text(
                            notas[i]['usuarios']['nombre']?.toString() ?? ''),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.all(6),
                        child: pw.Text(notas[i]['nota']?.toString() ?? ''),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            pw.Spacer(),

            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Text(
                "Documento generado automáticamente  2026",
                style: pw.TextStyle(
                  fontSize: 12,
                  color: PdfColors.grey700,
                ),
              ),
            ),
          ],
        );
      },
    ),
  );

  final bytes = await pdf.save();

  final file = FFUploadedFile(
    name: 'mi_pdf.pdf',
    bytes: bytes,
  );

  return file;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
