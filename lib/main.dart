import 'package:flutter/material.dart';
import 'package:telegram/chatScreen.dart';
import 'package:telegram/teledrawer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Protop(),
    ),
  );
}

class Protop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      drawer:Teledrawer(),

      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Color.fromRGBO(41, 118, 186, 100),
        title: Text('Telegram'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
         
            ListTile(
            title: Text('Anumodh' , 
            style: TextStyle(fontSize: 20.0 , fontFamily: 'Roboto'),),
            subtitle: Text('hello , welcome to flutter'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/user.png'),radius: 27.0,),
            trailing: Text("Mon", style: TextStyle(fontSize: 12),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ChatScreen();
                }),
              );
            },
          ),

          ListTile(
            title: Text('Akhil' , 
            style: TextStyle(fontSize: 20.0 , fontFamily: 'Roboto'),),
            subtitle: Text('hello , welcome to flutter'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/download.png'),radius: 27.0,),
            trailing: Text("Mon", style: TextStyle(fontSize: 12),),
          ),
          ListTile(
            title: Text('Telegram' , 
            style: TextStyle(fontSize: 20.0 , fontFamily: 'Roboto'),),
            subtitle: Text('hello , welcome to flutter'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/tele.png'),radius: 27.0,),
            trailing: Text("Mon", style: TextStyle(fontSize: 12),),
          ),
          ListTile(
            title: Text('Athul' , 
            style: TextStyle(fontSize: 20.0 , fontFamily: 'Roboto'),),
            subtitle: Text('hello , welcome to flutter'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/user.png'),radius: 27.0,),
            trailing: Text("Mon", style: TextStyle(fontSize: 12),),
          ),
                
          ]
          )
          
   
      
    );
  }
}

