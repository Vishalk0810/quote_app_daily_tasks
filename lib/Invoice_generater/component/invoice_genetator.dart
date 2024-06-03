import 'package:flutter/material.dart';

class InvoiceGenetator extends StatefulWidget {
  const InvoiceGenetator({super.key});

  @override
  State<InvoiceGenetator> createState() => _InvoiceGenetatorState();
}

class _InvoiceGenetatorState extends State<InvoiceGenetator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            'Invoice Generator',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            ...List.generate(invoiceDetails.length, (index)=> GestureDetector(
              onTap: () {
                SelectedIndex=index;
                Navigator.pushNamed(context, '/Detail');
              },
              child: ListTile(
                title: Text('${invoiceDetails[index]['title']}',style: TextStyle(fontWeight: FontWeight.w600),),
                subtitle: Text('${invoiceDetails[index]['name']}',style: TextStyle(fontWeight: FontWeight.w600),),
                trailing: Text('${invoiceDetails[index]['Price']}',style: TextStyle(
                  fontSize: 15
                ),),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}

List invoiceDetails=[
  {
    'name': 'Vishal Keshri',
    'title': 'Flutter Developer',
    'Price': 'Rs. 40000/-',
  },
  {
    'name': 'Vishnu Shah',
    'title': 'Web Developer',
    'Price': 'Rs. 20000/-',
  },
  {
    'name': 'Mohit Lakhara',
    'title': 'UI UX',
    'Price': 'Rs. 30000/-',
  },
  {
    'name': 'Sahil Kashyap',
    'title': 'Game Developer',
    'Price': 'Rs. 35000/-',
  }
];
int SelectedIndex=0;
