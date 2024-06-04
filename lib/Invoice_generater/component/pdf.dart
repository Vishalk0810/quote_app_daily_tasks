import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import 'invoice_genetator.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return PdfPreview(
      build: (format) => generatePdf(),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Text(
              'Techniquee',
              style: const pw.TextStyle(
                fontSize: 35,
              ),
            ),
            pw.SizedBox(height: 25),
            pw.Table(
              border: pw.TableBorder.all(
                width: 3,
                color: PdfColors.black,
              ),
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      'Name',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      '${invoiceDetails[SelectedIndex]['name']}',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Text(
                      'Cource',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      '${invoiceDetails[SelectedIndex]['title']}',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Text(
                      'Technical Engagement',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      '${invoiceDetails[SelectedIndex]['title']}',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Text(
                      'Price',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      '${invoiceDetails[SelectedIndex]['Price']}',
                      style: const pw.TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}