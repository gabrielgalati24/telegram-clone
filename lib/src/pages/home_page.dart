import 'package:componentes/src/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Telegram furry'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MenuWidget(),
      body: _lista(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: null,
      ),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      Divider();
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        subtitle: Text("holi wuapo a que hora vas por el pan"),
        leading: _imgperfil(opt['img']),
        trailing: Text(opt['hora']),
        onTap: () {
          Navigator.pushNamed(context, 'chat');

          // final route = MaterialPageRoute(
          //   builder: ( context )=> AlertPage()
          // );

          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }

  _imgperfil(img) {
    return Hero(
      tag: img,
      child: Container(
          padding: EdgeInsets.all(2.0),
          child: CircleAvatar(radius: 25, backgroundImage: AssetImage(img))),
    );
  }
  //   return Container(
  //       height: 100, padding: EdgeInsets.all(5.0), child: Image.asset(img));
  // }

}
