import 'package:flutter/material.dart';
import 'package:telegram/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Protop();
            }));
          },
          icon: Icon(Icons.clear_rounded),
        ),
        title: Text('Telegram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: WebView(
        initialUrl: 'https://telegram.org/faq',
      ),
    );
  }
}
