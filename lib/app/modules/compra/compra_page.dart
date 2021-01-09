import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular_routes/app/shared/produto_model.dart';
import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final ProdutoModel produto;
  final String title;
  const CompraPage({Key key, this.title = "Compra", this.produto})
      : super(key: key);

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends ModularState<CompraPage, CompraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.store, color: Colors.limeAccent[400]),
              onPressed: () {
                Modular.to.pushNamed('/compra/carrinho/vindo de compra');
              }),
        ],
        title: Text('ID: ${widget.produto.id}'),
      ),
      body: Card(
        elevation: 3,
        child: ListTile(
          title: Text(widget.produto.nome + ' (${widget.produto.id})'),
          subtitle: Text('R\$ ' + widget.produto.preco.toString()),
        ),
      ),
    );
  }
}
