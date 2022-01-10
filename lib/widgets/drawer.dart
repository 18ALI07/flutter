import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mydrawer extends StatelessWidget {
final imageurl="https://www.zsl.org/sites/default/files/image/2014-02/lion-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(


          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(


              padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child:UserAccountsDrawerHeader(

                  accountName: Text("aliraza"),
                  accountEmail: Text("aliraza@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),


            ),
            ),
            ListTile(
              leading:Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text(

                "Home",
                textScaleFactor:1.2,
                style: TextStyle(
                color: Colors.white,

              ),

              ),

            ),
            ListTile(
              leading:Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text(

                "Profile",
                textScaleFactor:1.2,
                style: TextStyle(
                  color: Colors.white,

                ),

              ),

            ),
            ListTile(
              leading:Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text(

                "Mail me",
                textScaleFactor:1.2,
                style: TextStyle(
                  color: Colors.white,

                ),

              ),

            )
          ],
        ),
      ),

    );
  }
}
