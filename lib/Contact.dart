import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:telegram/contactlist.dart';
import 'package:telegram/main.dart';

class windowcontact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Color.fromRGBO(41, 118, 186, 100),
           leading: BackButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){
              return Protop();
             }));
           },),
           actions: [
             IconButton(icon:Icon(Icons.search) , onPressed: (){}),
             IconButton(icon:Icon(Icons.sort_rounded) , onPressed: (){}),
           ],
           title: Text("Contacts",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
            ),
           
           body: ListView(
             
             children:[
                   ListTile( contentPadding: EdgeInsets.fromLTRB(26, 0, 0, 0),
                     leading: Icon(OMIcons.groupAdd , size:30 ,) ,
                     title: Text("Invite Friends" ,style:TextStyle(fontSize:16)),
                   ),
                   ListTile(contentPadding: EdgeInsets.fromLTRB(26, 0, 0, 0),
                     leading: Icon(OMIcons.locationOn,size:30 ,) ,
                     title: Text("Find people Nearby" ,style:TextStyle(fontSize:16)),
                   ),
                Container(alignment: Alignment.centerLeft,padding: EdgeInsets.only(left:15),
                      height: 30,width: double.infinity,
                      color: Colors.grey[200],
                      child:  Text(  "Sorted by last seen time", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.grey),),
                ),
                 
                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/user.png'),radius: 27.0,),
                    contactname: "Anumodh",
                    status: "last seen recently",
                ),
                
                 ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/download.png'),radius: 27.0,),
                    contactname: "Akhil",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/tele.png'),radius: 27.0,),
                    contactname: "Telegram",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/w.png'),radius: 27.0,),
                    contactname: "Women",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/m.png'),radius: 27.0,),
                    contactname: "Men",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/m1.jpg'),radius: 27.0,),
                    contactname: "Men 2",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/User-Icon.jpg'),radius: 27.0,),
                    contactname: "Men 3",
                    status: "last seen recently",
                ),

                                               ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/w.png'),radius: 27.0,),
                    contactname: "Women",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/m.png'),radius: 27.0,),
                    contactname: "Men",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/m1.jpg'),radius: 27.0,),
                    contactname: "Men 2",
                    status: "last seen recently",
                ),
                                ContactList(
                    contactimage: CircleAvatar(backgroundImage: AssetImage('assets/User-Icon.jpg'),radius: 27.0,),
                    contactname: "Men 3",
                    status: "last seen recently",
                ),  

             ]
           ),
           
          


    );
  }
}