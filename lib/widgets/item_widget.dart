import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
class itemwidget extends StatelessWidget {
  final item items;
  const itemwidget({Key? key,required this.items}) :
        assert(items!=null),
        super(key: key);


  @override
  Widget build(BuildContext context) {

    return Card(

      child: ListTile(
        onTap: (){
          print("clicked${items.name}");
        },
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("\$${items.price}",
            textScaleFactor: 1.5,
        style:

        TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
