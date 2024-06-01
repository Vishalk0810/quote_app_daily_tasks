import 'package:flutter/material.dart';

class DialogueBoxScreen extends StatefulWidget {
  const DialogueBoxScreen({super.key});

  @override
  State<DialogueBoxScreen> createState() => _DialogueBoxScreenState();
}

class _DialogueBoxScreenState extends State<DialogueBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
        ),
      ),
    );
  }
}