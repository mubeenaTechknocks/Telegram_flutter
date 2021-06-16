
import 'package:flutter/material.dart';

class Drawerlist extends StatelessWidget {

   final IconData iconmake;
   final String   listname;
   final void Function() whenclick;

 Drawerlist({this.iconmake, this.listname,this.whenclick});


  @override
  Widget build(BuildContext context) {
    return ListTile( 
          leading: Icon(iconmake),
          title: Text(listname),
          onTap:whenclick,
            );
          }
    
  }
