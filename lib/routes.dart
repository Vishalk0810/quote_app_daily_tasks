import 'package:flutter/material.dart';
import 'dialogue/component/dialogue_screen.dart';

class MapRoutes{
  static Map<String, Widget Function(BuildContext)>routes = {
    '/':(context)=> const DialogueBoxScreen(),
  };
}