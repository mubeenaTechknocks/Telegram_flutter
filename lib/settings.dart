import 'package:flutter/material.dart';
import 'package:telegram/main.dart';

void main() {
  runApp(
    MaterialApp(
      home: Settings(),
    ),
  );
}

class Settings extends StatelessWidget {
  final username = 'Akhil Jose';
  final imgurl ='assets/ninja.png';
  final lastseen = 'online';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leadingWidth: 20,
          leading:
              // Stack(children: [
              IconButton(
            onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Protop();
                }),
              );
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          //   CircleAvatar(backgroundImage: NetworkImage(imgurl),)
          // ],),
          backgroundColor: Color.fromRGBO(41, 118, 186, 60),
          expandedHeight: 130.0,
          floating: false,
          snap: false,
          pinned: true,
          flexibleSpace: Container(
            child: FlexibleSpaceBar(
              titlePadding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              title: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(imgurl),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        lastseen,
                        style: TextStyle(fontSize: 10, color: Colors.white70),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.5),
                      )
                    ]),
              ]),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('Menu Button');
              },
            ),
          ],
        ),

//CONTENTS

        SliverList(
          delegate: SliverChildListDelegate([
            Column(children: [
              Container(
                height: 40,
                child: FlatButton(
                  onPressed: () {},
                  child: Row(children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.blue,
                    ),
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      'Set Profile Photo',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
              ),
              Container(height: 10, color: Colors.grey[200]),
              Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 18),
                        child: Text(
                          'Account',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '+91 9564832148',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Tap to change phone number',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'None',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Username',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bio',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Add a few words about yourself',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                      ),
                    ]),
              ),
              Container(height: 10, color: Colors.grey[200]),
              Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 18),
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Notifications and Sounds',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.lock_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Privacy and Security',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.data_usage,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Data and Storage',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Chat Settings',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.folder_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Folders',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.laptop,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Devices',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.language,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Language',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                    ]),
              ),
              Container(height: 10, color: Colors.grey[200]),
              Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 18),
                        child: Text(
                          'Help',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Ask a Question',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.contact_support_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Telegram FAQ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                      Divider(),
                      FlatButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(
                            Icons.privacy_tip_outlined,
                            color: Colors.grey[600],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Text(
                            'Privacy Ploicy',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey[200],
                alignment: Alignment.center,
                child: Text(
                  'Telegram for Android v7.3.1 (2206) arm64-v8a',
                  style: TextStyle(fontSize: 13.5, color: Colors.grey),
                ),
              ),
            ]),
          ]),
        ),
      ],
    ));
  }
}
