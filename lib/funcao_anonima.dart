import 'dart:io';

double definirPrecoDescontoLoja(
    double Function(double preco, double qtnPublico, double qtnFuncionario) f,
    double qtnCacau,
    String chocoTipo,
    String chocoFormato,
    double qtnPublico,
    double qtnFuncionario) {
  double preco = 50;
  if (chocoTipo == "branco") {
    preco = preco + 5;
  } else if (chocoTipo == "preto") {
    preco = preco + 20;
  }
  if (chocoFormato == "Coração") {
    preco = preco + 30;
  } else if (chocoFormato == "Retangulo") {
    preco = preco + 5;
  } else if (chocoFormato == "Redondo") {
    preco = preco + 15;
  }

  return f(preco, qtnPublico, qtnFuncionario);
}
