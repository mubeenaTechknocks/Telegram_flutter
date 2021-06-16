import 'package:flutter/material.dart';
import 'package:telegram/main.dart';

class PeopleNear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: BackButton(color: Colors.grey[600], onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context){
              return Protop();
             }));
           },),
     backgroundColor: Colors.white60,
     elevation: 0,
     ),
     body: Container(
       color: Colors.white60,
       child: Column(children: [
                  
                       Container(
                         width: double.infinity,
                         height: MediaQuery.of(context).size.height*0.3,
                         child: Image.asset( 'assets/location.gif', width: 5,height: 5,),
                       ),  
                       Padding(padding: EdgeInsets.only(top: 20),),
                       Text("People Nearby" ,style: TextStyle(fontSize: 23),),
                       Container(margin: EdgeInsets.symmetric(horizontal:30, vertical:45),
                         child: Text( "Quickly add people nearby who are viewing this section ans discover local group chats",
                         textAlign: TextAlign.center ,style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                         ),
                       Text("Please switch on location acces to enable this feature " ,style: TextStyle(fontSize: 16, color: Colors.grey[600]),),
                       Container(margin: EdgeInsets.only(top:110),
                         child: FlatButton(onPressed: (){}, child:Text("Allow Access", style: TextStyle(color: Colors.white)),color: Colors.blue[300],),

                         )
                       
                       ],     
                       ),
              
     ), 

    );
  }
}