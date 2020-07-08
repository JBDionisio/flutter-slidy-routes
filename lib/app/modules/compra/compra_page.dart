import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/modules/compra/components/card_produto.dart';
import 'package:teste_slidy/app/shared/produto_model.dart';
import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final List<ProdutoModel> produtos;
  final String title;
  const CompraPage({Key key, this.title = "Compra", @required this.produtos})
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
          title: Text("teste"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Modular.link.pushNamed("/carrinho/vindo do compra");
              },
            )
          ],
        ),
        body: ListView.builder(
            itemCount: widget.produtos.length,
            itemBuilder: (BuildContext context, int index) {
              return CardProduto(
                nome: widget.produtos[index].nome,
                preco: widget.produtos[index].preco,
              );
            }));
  }
}
