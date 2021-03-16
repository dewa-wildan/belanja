import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'home_page.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            title: Text("Item Detail"),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.black87,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Nama : " + tempItem.name,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Price : " + tempItem.price.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text("Kode Barang : " + tempItem.kodebarang.toString(),
                  style: TextStyle(color: Colors.white))
            ]),
          )),
    );
  }
  // This widget is the root of your application.

}
