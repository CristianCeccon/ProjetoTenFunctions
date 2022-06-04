import 'package:projeto_ten_functions/funcao_anonima.dart';
import 'package:projeto_ten_functions/funcao_arrow_function.dart';
import 'package:projeto_ten_functions/funcao_parametro_posicional.dart';
import 'package:projeto_ten_functions/funcao_parametro_posicional_obrigatorio.dart';
import 'package:projeto_ten_functions/projeto_ten_functions.dart'
    as projeto_ten_functions;
import 'package:test/scaffolding.dart';

void main(List<String> arguments) {
  //___________________Função Anonima___________________________
  definirPrecoDescontoLoja((preco, qtnPublico, qtnFuncionario) {
    double precoFinal = 0;
    if (qtnPublico >= 10 && qtnFuncionario >= 5) {
      precoFinal = preco - 5;
    }
    return precoFinal;
  }, 10, 'branco', 'redondo', 20, 15);

  //_____________Função Posicional Obrigatorio__________________
  verificarQualidadeChoco(8, 8, 8);

  definirPrecoFinalSegundoNotaCupom(10, 7, 60);

  calcularQuantidadeAcucarManteigaCacau(20, 30, 30);

  criaDescricaoChocolateAlergias(20, true, true, true);

  calculoFaltaStock(5, 10, 20);

  estrelaFuncionario(30, 0);

  definirFeriasFuncionario(250, 20, "mental");

  //_____________Função Parametro Posicional____________________
  calcularSalarioFuncionario(1000, 20);

  //___________________Função Arrow___________________________
  verificarChocolateSerRefeito(20, 50, 60, 60);
}
