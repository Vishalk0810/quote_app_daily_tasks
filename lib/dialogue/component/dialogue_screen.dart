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
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title: const Text('Dialogue Box'),
        ),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        title: Text('Alert!!!'),
                      ),
                    );
                  },
                  child: const Text('Alert')),
              OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Are you sure you want to delete the Message'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Ok'))
                        ],
                      ),
                    );
                  },
                  child: const Text('Warning')),
              OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Enter Pet name for deleting'),
                        actions: [
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Pet name',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancle',style: TextStyle(fontSize: 17),)),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Done',style: TextStyle(fontSize: 17),)),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  child: const Text('Messages')),
          
            ],
          ),
        ),
      ),
    );
  }
}
