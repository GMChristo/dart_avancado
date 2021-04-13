void main() {
  comprimentar('Gabriel', (mensagem) {
    print(mensagem);
  });

  despedir('Gabriel', (mensagem) {
    print(mensagem);
  });
}

typedef CallbackMensagem = void Function(String mensagem);

void comprimentar(String nome, CallbackMensagem callback) {
  callback('Olá $nome seja bem vindo!');
}

void despedir(String nome, CallbackMensagem callback) {
  callback('$nome obrigado pela visita!');
}
