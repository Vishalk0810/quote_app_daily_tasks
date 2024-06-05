import 'package:flutter/material.dart';
import 'package:quote_app_daily_tasks/quotes/component/quotes.dart';
import 'Invoice_generater/component/datils.dart';
import 'Invoice_generater/component/invoice_genetator.dart';
import 'Invoice_generater/component/pdf.dart';
import 'List_Grid_view/component/list_grid-view.dart';
import 'dialogue/component/dialogue_screen.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
       '/':(context)=> const ToogleScreen(),
    // '/':(context)=> const QuotesScreen(),
    // '/':(context)=> const InvoiceGenetator(),
    // '/Detail':(context)=> const DetailScreen(),
    // '/pdf':(context)=> const PdfScreen(),
    //'/':(context)=> const DialogueBoxScreen(),
  };
}