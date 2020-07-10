import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_slidy/app/shared/produto_model.dart';
import 'produto_controller.dart';

class ProdutoPage extends StatefulWidget {
  final String nomeDaLoja;
  const ProdutoPage({Key key, @required this.nomeDaLoja}) : super(key: key);

  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends ModularState<ProdutoPage, ProdutoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.nomeDaLoja),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Modular.to
                    .pushNamed("/compra/", arguments: controller.produtos);
              },
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: GridView.builder(
            itemCount: 20,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext c, int i) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Theme.of(c).scaffoldBackgroundColor,
                  elevation: 0,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      controller.addProduct(ProdutoModel(
                          id: i, nome: "PRODUTO $i", preco: 3.0 * i));
                    },
                    child: Container(
                      height: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: CircleAvatar(
                              child: Icon(
                                Icons.person,
                                size: 45,
                              ),
                              radius: 35,
                            ),
                          ),
                          Text(
                            "PRODUTO $i",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 10),
                          //   child: Text(
                          //     "Unde fugit tempore culpa officiis velit dolores eveniet. Numquam non ex cum non.",
                          //     style: TextStyle(
                          //       fontSize: 12,
                          //     ),
                          //     textAlign: TextAlign.center,
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )

        /*
        ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                controller.addProduct(ProdutoModel(
                    id: index, nome: "Produto$index", preco: 3.0 * index));
              },
              title: Text("Produtos $index"),
              subtitle: Text("Melhor produto"),
              leading: CircleAvatar(
                child: Text("P$index"),
              ),
            );
          },
        )
        */
        );
  }
}
