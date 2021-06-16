import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:telegram/Contact.dart';
import 'package:telegram/Faq.dart';
import 'package:telegram/drawerlist.dart';
import 'package:telegram/peopleNearMe.dart';
import 'package:telegram/settings.dart';


class Teledrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final ht=MediaQuery.of(context).size.height-
             MediaQuery.of(context).padding.top-
             kToolbarHeight ;

   final wt=MediaQuery.of(context).size.height;
    return   Drawer(
        child:Column(
              
               children: [ 
                 Stack( children:[
                        //  Flexible(child: FractionallySizedBox( heightFactor: 0.5,
                        
                            Container( 
                              width: double.infinity,
                              height: ht*0.25,
                              // color: Colors.blueGrey,
                              color: Color.fromRGBO(90,143,187,8),
                            ),
                       
                        //  )
                        
                     
                            Positioned( top: 50,left: 15,
                              child:FlatButton(
                                onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Settings();
                                }),
                              );
                            },
                                child: Container(
                              width: 65,
                              height: 65,
                              // color: Colors.deepPurple,
                              child: CircleAvatar(backgroundImage: AssetImage('assets/user.png'), radius: 35.0,),
                            ),
                              )
                        
                            ),
                       

                               
                            Positioned( top: 35 ,right: 18 ,
                              child:Container(
                              width: 25,
                              height: 25,
                              // color: Colors.indigoAccent,
                              child: IconButton( onPressed: (){}, color: Colors.white, icon: Icon(Icons.nights_stay_outlined),)
                              // Image.asset('assets/b.png'),
                              
                            )
                            ), 

                            Positioned( bottom: 5 ,right: 18 ,
                              child:Container(
                              width: 30,
                              height: 30,
                              // color: Colors.indigoAccent,
                              //  child: Image.asset('assets/up.png'),
                              child: IconButton( onPressed: (){}, color: Colors.white, icon: Icon(Icons.arrow_drop_down),)
                            )
                            ),

                            Positioned( top: ht*0.160,
                              child:Container(
                              width: 140,
                              height: 100,
                              // color: Colors.pinkAccent,
                              child: ListTile(title: Text("Anumodh KJ" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold,)), 
                                              subtitle: Text("+91 9895301845" , style: TextStyle(color: Colors.white54),),
                                             ),
                              
                            ),
                            ), 
                                ]//slack end

                      ),


                      Drawerlist(
                           iconmake: OMIcons.group,
                           listname: "New Group",
                      ),
                     Drawerlist(
                           iconmake: OMIcons.contacts,
                           listname: "Contacts",
                           whenclick: ()
                           {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return windowcontact();
                                }),
                              );
                            },
                                                   
                           
                      ),
                      Drawerlist(
                           iconmake: OMIcons.call,
                           listname: "Calls",
                      ),
                      Drawerlist(
                           iconmake: OMIcons.nearMe,
                           listname: "People Nearby",
                            whenclick: ()
                           {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return PeopleNear();
                                }),
                              );
                            },
                      ),


                      Drawerlist(
                           iconmake: OMIcons.bookmarkBorder,
                           listname: "Saved messages",
                      ),
                      Drawerlist(
                           iconmake: OMIcons.settings,
                           listname: "Settings",
                           whenclick: ()
                           {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Settings();
                                }),
                              );
                            },
                      ),
                      Drawerlist(
                        
                           iconmake: OMIcons.helpOutline,
                           listname: "Telegram FAQ",
                           whenclick: ()
                           {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Faq();
                                }),
                              );
                            },
                      ),
                      

                      ],
     




    ), //  first full column  
    
    );
    
  }
}





// Drawer(
//         child: Column(
              
//                children: [
//                  Stack( children:[
//                             Container( 
//                               width: double.infinity,
//                               height: 150,
//                               color: Colors.blueGrey,
//                             ),

//                             Positioned( top: 15,left: 15,
//                               child:Container(
//                               width: 60,
    //                           height: 60,
    //                           // color: Colors.deepPurple,
    //                           child: CircleAvatar(backgroundImage: AssetImage('assets/user.png'), radius: 35.0,),
    //                         )
    //                         ),
                               
    //                         Positioned( top: 20 ,right: 7 ,
    //                           child:Container(
    //                           width: 30,
    //                           height: 30,
    //                           // color: Colors.indigoAccent,
    //                           child: Image.asset('assets/b.png'),
    //                         )
    //                         ), 

    //                         Positioned( bottom: 0 ,right: 0 ,
    //                           child:Container(
    //                           width: 30,
    //                           height: 30,
    //                           // color: Colors.indigoAccent,
    //                            child: Image.asset('assets/up.png'),
    //                         )
    //                         ),

    //                         Positioned( top: 80,
    //                           child:Container(
    //                           width: 140,
    //                           height: 100,
    //                           // color: Colors.pinkAccent,
    //                           child: ListTile(title: Text("Anumodh KJ"),
    //                                           subtitle: Text("+91 9895301845"),
    //                                          ),
                              
    //                         ),
    //                         ), 
    //                             ]//slack end

    //                   )
    //                     ],
















    // ), //  first full column  
    // );











// children: <Widget>[
//                          Container(
//                             height: 200,
//                             width:double.infinity,
//                             color:Colors.orange,
                             
//                             child: Column(children:<Widget>[
//                               Container(
//                                 width: double.infinity,
//                                 height: 90,
//                                 color:Colors.red,
//                                                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                         children: [
//                                                           Container( 
//                                                             width: 80,
//                                                             height:60,
//                                                             color:Colors.tealAccent,
//                                                             child: CircleAvatar(backgroundImage: AssetImage('assets/user.png'), radius: 35.0,),
//                                                           ),
                                                           
//                                                            Container( 
//                                                             width: 30,
//                                                             height:50,
//                                                             color:Colors.grey,
//                                                             child:  CircleAvatar(backgroundImage: AssetImage('assets/nyt.png'),),
//                                                           ),
//                                                         ],
//                                                    ),
//                               ),
//                               Container(
//                                 width: double.infinity,
//                                 height: 50,
//                                 color:Colors.red[200],
//                                                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                         children: [
//                                                           Container( 
//                                                             padding: EdgeInsets.only(top:20 ),
//                                                             width: 90,
//                                                             height:50,
//                                                             color:Colors.deepPurpleAccent,
//                                                             child: Text('Anumodh')  ,
                                                            
//                                                           ),
                                                           
//                                                            Container( 
//                                                             width: 30,
//                                                             height:50,
//                                                             color:Colors.purpleAccent,
//                                                             child:  CircleAvatar(backgroundImage: AssetImage('assets/up.png'),),
//                                                           ),
//                                                         ],
//                                                    ),
                                                  
//                               )
                              
//                             ]),
                               
                              
    
//                       ), //orange container
                      
//                                 ], //first colum children 1st children 
         









// class Teledrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer( 
//       child: Column(children: [
//        Row(children: [Container( 
//         color: Color.fromRGBO(41, 118, 186, 100),
//           width: double.infinity,
//           height: 200,
//           child: Column(children: [
//             Container( decoration: BoxDecoration(shape: BoxShape.circle),
//               child: CircleAvatar(backgroundImage: AssetImage('assets/user.png'), radius: 35.0,),
//               alignment: Alignment.centerLeft,
//               margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
//             ),
         
//             ])
// ),
       

//           ],),
//        ] ),
    
//      ) ;
      
    
//   }
// }