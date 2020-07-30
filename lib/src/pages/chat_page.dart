import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Garenamix"),
        leading: _imgperfil('assets/1.jpg'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.toc),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _imgperfil(img) {
    return Hero(
      tag: img,
      child: Container(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(radius: 25, backgroundImage: AssetImage(img))),
    );
  }
}
