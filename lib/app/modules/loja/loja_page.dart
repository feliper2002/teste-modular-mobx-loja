import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'loja_controller.dart';

class LojaPage extends StatefulWidget {
  final String title;
  const LojaPage({Key key, this.title = "Loja"}) : super(key: key);

  @override
  _LojaPageState createState() => _LojaPageState();
}

class _LojaPageState extends ModularState<LojaPage, LojaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.store, color: Colors.limeAccent[400]),
              onPressed: () {
                Modular.to.pushNamed('/compra/carrinho/vindo da loja');
              }),
        ],
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Loja $index'),
            subtitle: Text('Isso é só uma loja'),
            onTap: () {
              Modular.to.pushNamed('/produto/Loja $index');
            },
          );
        },
      ),
    );
  }
}
