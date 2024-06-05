import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/list.dart';

QuoteModel? quoteModel;

class ToogleScreen extends StatefulWidget {
  const ToogleScreen({super.key});

  @override
  State<ToogleScreen> createState() => _ToogleScreenState();
}

class _ToogleScreenState extends State<ToogleScreen> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    if(grid){
                      grid = false;
                    }
                    else{
                      grid = true;
                    }
                  });
                },
                child: Icon(grid?Icons.grid_4x4:Icons.list)),
          ],
          title: const Text(
            'Toogle',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: grid?gridView():listView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModelList.length);
            setState(() {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor:
                      Colors.accents[Random().nextInt((Colors.accents.length))],
                  title: Text(quoteModel!.quoteModelList[x].quote!),
                  content: Text(quoteModel!.quoteModelList[x].author!),
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
                        child: const Text('Save'))
                  ],
                ),
              );
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  GridView gridView() {
    return GridView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            color: index%2==0?Colors.cyan:Colors.tealAccent,
            child: ListTile(
              title: Text(quoteModel!.quoteModelList[index].quote!),
              subtitle: Text(quoteModel!.quoteModelList[index].author!),
            ),
          );
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 16/20),
      );
  }

  ListView listView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(10),
          color: index%2==0?Colors.cyan:Colors.tealAccent,
          child: ListTile(
            title: Text(quoteModel!.quoteModelList[index].quote!),
            subtitle: Text(quoteModel!.quoteModelList[index].author!),
          ),
        );
      },
    );
  }
}
