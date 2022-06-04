bool verificarChocolateSerRefeito(
    int porcentagemCacau, int qtnAcucar, int limiteAcucar, int limiteCacau) {
  int a = 0;
  int b = 0;
  List<String> tipoChocolates = [
    "Chocolate ao leite",
    "Chocolate Branco",
    "Chocolate ao Amargo",
    "Chocolate Meio-Amargo"
  ];
  tipoChocolates.forEach((number) => b = b + 1);
  bool retornoChoco = false;
  while (a <= b) {
    a = a + 1;
    if (tipoChocolates[a] == "Chocolate ao leite" ||
        tipoChocolates[a] == "Chocolate Branco" ||
        tipoChocolates[a] == "Chocolate ao Amargo" ||
        tipoChocolates[a] == "Chocolate Meio-Amargo") {
      if (qtnAcucar <= limiteAcucar && porcentagemCacau <= limiteCacau) {
        retornoChoco = true;
        return retornoChoco;
      } else {
        retornoChoco = false;
        return retornoChoco;
      }
    }
  }
  return retornoChoco;
}
