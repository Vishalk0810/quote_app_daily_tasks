import 'package:flutter/material.dart';
import 'Invoice_generater/component/datils.dart';
import 'Invoice_generater/component/invoice_genetator.dart';
import 'Invoice_generater/component/pdf.dart';
import 'dialogue/component/dialogue_screen.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=> const InvoiceGenetator(),
    '/Detail':(context)=> const DetailScreen(),
    '/pdf':(context)=> const PdfScreen(),
    //'/':(context)=> const DialogueBoxScreen(),
  };
}