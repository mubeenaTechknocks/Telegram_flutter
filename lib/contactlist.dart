import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final CircleAvatar contactimage;
  final String contactname;
  final String status;
  

  
  ContactList({this.contactname, this.contactimage, this.status});



  @override
  Widget build(BuildContext context) {
    return ListTile(
         leading: contactimage,
         title: Text(contactname),
         subtitle: Text(status),
    );
  }
}



// class Cl{
//   final CircleAvatar profilepic;
//   final String name;
//   final  String last;

//   Cl({
//   this.profilepic,
// this.name ,
// this.last,
//   });

// }
// Cl  object= new Cl(
//   profilepic: CircleAvatar(backgroundImage: AssetImage('assets/download.png'),radius: 27.0,),
//   name: "akhil",
//   last:"last seen recently"
// );
// Cl  obj2= new Cl(
//   profilepic: CircleAvatar(backgroundImage: AssetImage('assets/download.png'),radius: 27.0,),
//   name: "akhil",
//   last:"last seen recently"
// );