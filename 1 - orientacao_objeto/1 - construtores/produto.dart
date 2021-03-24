class Produto {
  final int id;
  final String nome;
  final double preco;

  Produto(this.id, this.nome, this.preco);
  Produto.a(int idProduto, String nomeProduto, double precoProduto) : this.id = idProduto, this.nome = nomeProduto, this.preco = precoProduto;
  
}
