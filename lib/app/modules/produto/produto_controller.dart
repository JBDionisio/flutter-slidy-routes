import 'package:mobx/mobx.dart';
import 'package:teste_slidy/app/shared/produto_model.dart';

part 'produto_controller.g.dart';

class ProdutoController = _ProdutoControllerBase with _$ProdutoController;

abstract class _ProdutoControllerBase with Store {
  
  @observable
  List<ProdutoModel> produtos = List<ProdutoModel>();

  @action
  void addProduct(ProdutoModel p) {
    produtos.add(p);
  }

}
