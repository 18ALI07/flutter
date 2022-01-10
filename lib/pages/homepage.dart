import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/drawer.dart';
import 'package:untitled/widgets/item_widget.dart';

class homepage extends StatefulWidget {


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }
  loaddata()async {
    await Future.delayed(Duration(seconds:2));
    final catalogjson=await rootBundle.loadString("assets/files/catalog.json");
    final decodedata=jsonDecode(catalogjson);
    var producdata=decodedata["products"];
   catalogmodel.items =List.from(producdata).map<item>((itemss) => item.fromMap(itemss)).toList();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    //final dummylist=List.generate(100, (index) => catalogmodel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child:(catalogmodel.items!=null && catalogmodel.items.isNotEmpty)? ListView.builder(
          itemCount:catalogmodel.items.length,
          itemBuilder: (context,index){
            return itemwidget(items:catalogmodel.items[index])

            ;
          },
    ):
        Center(child:CircularProgressIndicator(),)
        ,
      ),

    drawer: mydrawer(),





    );
  }
}
