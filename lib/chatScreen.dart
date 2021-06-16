import 'package:flutter/material.dart';
import 'package:telegram/main.dart';
import 'package:telegram/profile.dart';
import 'package:bubble/bubble.dart';
import 'package:telegram/user_model.dart';
import 'package:telegram/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe, bool isSameUser) {
    if (isMe) {
      return Bubble(
        alignment: Alignment.centerRight,
        nipWidth: 8,
        nipHeight: 4.8,
        nipRadius: .5,
        radius: Radius.circular(10.0),
        margin: BubbleEdges.only(top: 10, left: 30),
        nip: BubbleNip.rightBottom,
        color: Color.fromRGBO(229, 249, 211, 1),
        child: Column(children: [
          Text(message.text, textAlign: TextAlign.left),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.green,
                ),
               
              ),
               Icon(Icons.done_all_outlined,
               size:15,
               color: Colors.green,)
            ],
          )
        ]),
      );
    } else {
      return Bubble(
          alignment: Alignment.centerLeft,
          nipWidth: 8,
          nipHeight: 4.8,
          nipRadius: .5,
          radius: Radius.circular(10.0),
          margin: BubbleEdges.only(top: 8, right: 30),
          nip: BubbleNip.leftBottom,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Column(
            children: [
              Text(
                message.text,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    message.time,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              Container(
                child: null,
              ),
            ],
          ));
    }
  }

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 45,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            splashRadius: .1,
            icon: Icon(Icons.insert_emoticon_outlined),
            iconSize: 25,
            color: Colors.grey,
            onPressed: () {
              print('Emoji button');
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Message',
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            iconSize: 25,
            color: Colors.grey,
            onPressed: () {
              print('Attach button');
            },
          ),
           IconButton(
            icon: Icon(Icons.mic_none_outlined),
            iconSize: 25,
            color: Colors.grey,
            onPressed: () {
              print('Voice message');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
      backgroundColor: Color.fromRGBO(208,217,224,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(82, 125, 163, 50),
        leadingWidth: 30.0,
        leading: BackButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Protop();
              }),
            );
          },
        ),
        title: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ProfileScreen();
                }),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 0, 0)),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anumodh K J',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.white),
                      ),
                      // ),
                      Text(
                        'Last seen recently',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ]),
              ],
            )),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(5),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == currentUser.id;
                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;
                return _chatBubble(message, isMe, isSameUser);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
