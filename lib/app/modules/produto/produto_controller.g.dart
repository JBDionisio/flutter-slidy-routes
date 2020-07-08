// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoController on _ProdutoControllerBase, Store {
  final _$produtosAtom = Atom(name: '_ProdutoControllerBase.produtos');

  @override
  List<ProdutoModel> get produtos {
    _$produtosAtom.reportRead();
    return super.produtos;
  }

  @override
  set produtos(List<ProdutoModel> value) {
    _$produtosAtom.reportWrite(value, super.produtos, () {
      super.produtos = value;
    });
  }

  final _$_ProdutoControllerBaseActionController =
      ActionController(name: '_ProdutoControllerBase');

  @override
  void addProduct(ProdutoModel p) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.addProduct');
    try {
      return super.addProduct(p);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produtos: ${produtos}
    ''';
  }
}
