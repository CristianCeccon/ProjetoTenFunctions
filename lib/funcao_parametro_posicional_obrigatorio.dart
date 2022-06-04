double definirPrecoFinalSegundoNotaCupom(
    double notaChoco, double cupom, double preco) {
  double desconto;
  double precoFinal = 0;
  if (notaChoco < 0 ||
      notaChoco > 10 ||
      cupom < 0 ||
      cupom > 10 ||
      preco < 0 ||
      preco > 2000) {
    throw Exception('A quantidade de notaChoco e cupom deverá ser de 0 a 10.');
  } else {
    if (notaChoco >= 7 && cupom == 10) {
      cupom = cupom + 20;
      desconto = preco - cupom;
      precoFinal = desconto;
      return precoFinal;
    } else if (notaChoco <= 3 && cupom == 10) {
      cupom = cupom + 5;
      desconto = preco - cupom;
      precoFinal = desconto;
      return precoFinal;
    } else if (notaChoco < 7 && cupom == 10) {
      cupom = cupom + 10;
      desconto = preco - cupom;
      precoFinal = desconto;
      return precoFinal;
    }
    return precoFinal;
  }
}

// Parte de 1 Função ______________________________________________________________________________________
bool verificarEntradaQualidadeChoco(qtnCacau, qtnAcucar, qualidadeExtra) {
  if (qtnCacau < 0 ||
      qtnCacau > 10 ||
      qtnAcucar < 0 ||
      qtnAcucar > 10 ||
      qualidadeExtra < 0 ||
      qualidadeExtra > 10) {
    return false;
  } else {
    return true;
  }
}

// Retorna uma nota para o produto = chocolate
double verificarQualidadeChoco(
    double qtnAcucar, double qtnCacau, double qualidadeExtra) {
  double notaChoco = 0;
  bool verefica;
  verefica = verificarEntradaQualidadeChoco(qtnCacau, qtnAcucar,
      qualidadeExtra); // Função Criada acima para diminuir a complexidade da função
  if (verefica == true) {
    if (qtnAcucar > 5 && qtnCacau > 5) {
      if (qualidadeExtra > 6) {
        notaChoco = 10;
        return notaChoco;
      } else {
        notaChoco = 7;
        return notaChoco;
      }
    } else {
      notaChoco = 3;
      return notaChoco;
    }
  } else if (verefica == false) {
    throw Exception(
        'A quantidade de cacau, acucar e qualidade extra deverá ser de 0 a 10.');
  }
  return notaChoco;
}

// Parte de 1 Função ______________________________________________________________________________________
bool verificarEntradaQuantidadeAcucar(qtnMassaCacau, leite, lecitina) {
  if (qtnMassaCacau < 0 ||
      qtnMassaCacau > 100 ||
      lecitina < 0 ||
      lecitina > 100 || // Ingredientes utilizados na fabriacação do chocolate
      leite < 0 ||
      leite > 100) {
    double soma = qtnMassaCacau + leite + lecitina;
    if (soma > 80 || soma < 80) {
      return false;
    }
    return false;
  } else {
    return true;
  }
}

List calcularQuantidadeAcucarManteigaCacau(
    // calcula a quantidade ideal de açucar e Manteiga de cacau na produção do chocolate
    double qtnMassaCacau,
    double leite,
    double lecitina) {
  double qtnManteigaCacau;
  double qtnAcucar;
  bool verefica;
  List<double> quantidadeManteigaAcucar;
  verefica = verificarEntradaQuantidadeAcucar(qtnMassaCacau, leite, lecitina);
  if (verefica == true) {
    double soma = qtnMassaCacau + leite + lecitina;
    double restante = 100 - soma;

    qtnManteigaCacau = (80 / 100) * restante;
    qtnAcucar = restante - qtnManteigaCacau;
    return quantidadeManteigaAcucar = [qtnAcucar, qtnManteigaCacau];
  } else if (verefica == false) {
    throw Exception(
        'A quantidade de Massa de cacau, Leite e lecitina deverá ser de 0 a 100 respeitando o espaço do Acucar');
  }
  return quantidadeManteigaAcucar = [];
}

// Parte de 1 Função ______________________________________________________________________________________
double estrelaFuncionario(double vendaMensal, double qtnFaltas) {
  double estrela = 0;

  if (vendaMensal > 20 && qtnFaltas == 0) {
    estrela = estrela + 1;
    return estrela;
  } else {
    estrela = 0;
    return estrela;
  }
}

// Parte de 1 Função ______________________________________________________________________________________
bool verificarEntradaGlutemLactoseAcucar(
    leite, amenduimUnidade, acucar, glutem) {
  if (amenduimUnidade < 0 ||
      amenduimUnidade > 50 ||
      leite == null ||
      acucar == null || // Ingredientes utilizados na fabriacação do chocolate
      glutem == null) {
    return false;
  } else {
    return true;
  }
}

String alergiaAmenduim(amenduimUnidade) {
  String alergiaAmenduim = "ERRO";
  if (amenduimUnidade > 0) {
    alergiaAmenduim = "ATENÇÂO CONTEM AMENDUIM";
    return alergiaAmenduim;
  } else if (amenduimUnidade == 0) {
    alergiaAmenduim = "NÃO CONTEM AMENDUIM";
    return alergiaAmenduim;
  }
  return alergiaAmenduim;
}

String alergiaLactose(leite) {
  String alergiaLactose = "ERRO";
  if (leite == true) {
    alergiaLactose = "ATENÇÂO CONTEM LEITE";
    return alergiaLactose;
  } else if (leite == false) {
    alergiaLactose = "NÃO CONTEM LEITE";
    return alergiaLactose;
  }
  return alergiaLactose;
}

String diabetes(acucar) {
  String diabetes = "ERRO";
  if (acucar == true) {
    diabetes = "ATENÇÂO CONTEM AÇUCAR";
    return diabetes;
  } else if (acucar == false) {
    diabetes = "NÃO CONTEM AÇUCAR";
    return diabetes;
  }
  return diabetes;
}

String celiaca(glutem) {
  String celiaca = "ERRO";
  if (glutem == true) {
    String celiaca = "ATENÇÂO CONTEM GLUTEM";
    return celiaca;
  } else if (glutem == false) {
    String celiaca = "NÃO CONTEM GLUTEM";
    return celiaca;
  }
  return celiaca;
}

List criaDescricaoChocolateAlergias(
  double amenduimUnidade,
  bool leite,
  bool acucar,
  bool glutem,
) {
  bool verifica = verificarEntradaGlutemLactoseAcucar(
      leite, amenduimUnidade, acucar, glutem);
  List<String> descricaoAlergias;
  if (verifica == true) {
    String alergiaAmenduimFinal = alergiaAmenduim(amenduimUnidade);
    String alergiaLactoseFinal = alergiaLactose(leite);
    String diabetesFinal = diabetes(acucar);
    String celiacaFinal = celiaca(glutem);
    return descricaoAlergias = [
      alergiaAmenduimFinal,
      alergiaLactoseFinal,
      diabetesFinal,
      celiacaFinal
    ];
  } else if (verifica == false) {
    throw Exception('A quantidade dos ingredientes foi passada errado');
  }
  return descricaoAlergias = [];
}

// Parte de 1 Função ________________________________________________________________________________________
bool verificarEntradaFaltaStock(qtnBarraChoco, qtnOvoChoco, qtnTrufaChoco) {
  if (qtnBarraChoco < 0 ||
      qtnBarraChoco > 1000 ||
      qtnOvoChoco < 0 ||
      qtnOvoChoco > 100 ||
      qtnTrufaChoco < 0 ||
      qtnTrufaChoco > 1000) {
    return false;
  } else {
    return true;
  }
}

String calculoFaltaStock(
    double qtnBarraChoco, double qtnOvoChoco, double qtnTrufaChoco) {
  bool verifica =
      verificarEntradaFaltaStock(qtnBarraChoco, qtnOvoChoco, qtnTrufaChoco);
  if (verifica == true) {
    if (qtnBarraChoco < 10) {
      String faltaBarraChoco =
          "Esta acabando barra de chocolate, verificar stock";
      return faltaBarraChoco;
    } else if (qtnOvoChoco < 5) {
      String faltaBarraChoco =
          "Esta acabando Ovo de chocolate, verificar stock";
      return faltaBarraChoco;
    } else if (qtnTrufaChoco < 30) {
      String faltaBarraChoco =
          "Esta acabando Ovo de chocolate, verificar stock";
      return faltaBarraChoco;
    }
  } else if (verifica == false) {
    throw Exception('A quantidade dos produtos foi passada errado');
  }
  return "ERRO";
}

// Parte de 1 Função ________________________________________________________________________________________
bool verificarEntradaFeriasFuncionario(
    diasTotaisTrabalhados, qtnAtestados, tipoServico) {
  if (diasTotaisTrabalhados < 0 ||
      diasTotaisTrabalhados > 365 ||
      qtnAtestados < 0 ||
      qtnAtestados > 100 ||
      tipoServico == null) {
    return false;
  } else {
    return true;
  }
}

double definirFeriasFuncionario(
    double diasTotaisTrabalhados, double qtnAtestados, String tipoServico) {
  double ferias = 0;
  diasTotaisTrabalhados = 365 - diasTotaisTrabalhados;
  double faltas =
      diasTotaisTrabalhados - 104; // todos finais de semana em 1 ano
  double faltasAbonadas = faltas - qtnAtestados;
  double diasTotaisTrabalhadosFinal = diasTotaisTrabalhados - faltasAbonadas;
  bool verifica = verificarEntradaFeriasFuncionario(
      diasTotaisTrabalhados, qtnAtestados, tipoServico);
  if (verifica == true) {
    if (diasTotaisTrabalhadosFinal >= 50 && tipoServico == "mental") {
      ferias = 60; //em dias
      return ferias;
    } else if (diasTotaisTrabalhadosFinal >= 50 && tipoServico == "fisico") {
      ferias = 75; //em dias
      return ferias;
    } else if (diasTotaisTrabalhadosFinal >= 100 && tipoServico == "mental") {
      ferias = 90; //em dias
      return ferias;
    } else if (diasTotaisTrabalhadosFinal >= 100 && tipoServico == "fisico") {
      ferias = 105; //em dias
      return ferias;
    } else if (diasTotaisTrabalhadosFinal >= 150 && tipoServico == "mental") {
      ferias = 120; //em dias
      return ferias;
    } else if (diasTotaisTrabalhadosFinal >= 150 && tipoServico == "fisico") {
      ferias = 120; //em dias
      return ferias;
    }
  } else if (verifica == false) {
    throw Exception('A quantidade dos produtos foi passada errado');
  }

  return ferias;
}
//_____________________________________________________________________________________________________________
