import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final String nome;
  final double preco;

  const CardProduto({Key key, this.nome, this.preco}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Produto: "),
                Text("$nome"),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Preço: "),
                Text("$preco")
              ],
            )
          ],
        ),
      ),
    );
  }
}
