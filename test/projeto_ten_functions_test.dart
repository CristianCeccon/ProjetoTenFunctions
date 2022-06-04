import 'package:projeto_ten_functions/funcao_parametro_posicional_obrigatorio.dart';
import 'package:test/test.dart';

void main() {
  group("Teste qualidade cacau", () {
    test('qualidadeChoco', () {
      expect(verificarQualidadeChoco(8, 8, 7), 10);
    });
    test('qualidadeChoco2', () {
      expect(verificarQualidadeChoco(5, 3, 3), 3);
    });
    test('qualidadeChoco3', () {
      expect(verificarQualidadeChoco(7, 7, 3), 7);
    });
    test('qualidadeChoco4', () {
      expect(() => verificarQualidadeChoco(-5, 8, 7), throwsException);
    });
    test('qualidadeChoco5', () {
      expect(() => verificarQualidadeChoco(5, -8, 7), throwsException);
    });
    test('qualidadeChoco6', () {
      expect(() => verificarQualidadeChoco(5, 8, -7), throwsException);
    });
    test('qualidadeChoco7', () {
      expect(() => verificarQualidadeChoco(120, 8, 7), throwsException);
    });
    test('qualidadeChoco8', () {
      expect(() => verificarQualidadeChoco(7, 120, 7), throwsException);
    });
    test('qualidadeChoco9', () {
      expect(() => verificarQualidadeChoco(9, 8, 120), throwsException);
    });
  });
  group("Teste preco chocolate", () {
    test('preco1', () {
      expect(definirPrecoFinalSegundoNotaCupom(8, 10, 50), 20);
    });
    test('preco2', () {
      expect(definirPrecoFinalSegundoNotaCupom(3, 10, 50), 35);
    });
    test('preco3', () {
      expect(definirPrecoFinalSegundoNotaCupom(6, 10, 50), 30);
    });
    test('preco4', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(-5, 8, 7), throwsException);
    });
    test('preco5', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(5, -8, 7), throwsException);
    });
    test('preco6', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(5, 8, -7), throwsException);
    });
    test('preco7', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(120, 8, 7), throwsException);
    });
    test('preco8', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(7, 120, 7), throwsException);
    });
  });

  group("Teste Ferias Funcionario", () {
    test('ferias1', () {
      expect(definirFeriasFuncionario(200, 20, "mental"), 60);
    });
    test('ferias2', () {
      expect(definirFeriasFuncionario(200, 20, "fisico"), 75);
    });
    test('ferias3', () {
      expect(
          () => definirFeriasFuncionario(500, 20, "fisico"), throwsException);
    });
    test('ferias4', () {
      expect(
          () => definirFeriasFuncionario(200, 1000, "fisico"), throwsException);
    });
    test('ferias5', () {
      expect(() => definirFeriasFuncionario(200, 1000, ""), throwsException);
    });
    test('ferias6', () {
      expect(
          () => definirFeriasFuncionario(-500, 20, "fisico"), throwsException);
    });
    test('ferias7', () {
      expect(() => definirFeriasFuncionario(200, -1000, "fisico"),
          throwsException);
    });
    test('ferias8', () {
      expect(
          () => definirFeriasFuncionario(200, 1000, "ERRO"), throwsException);
    });
  });

  group("Teste definir preco final segundo cupom", () {
    test('cupom1', () {
      expect(definirPrecoFinalSegundoNotaCupom(7, 10, 50), 20);
    });
    test('cupom2', () {
      expect(definirPrecoFinalSegundoNotaCupom(5, 10, 50), 30);
    });
    test('cupom3', () {
      expect(definirPrecoFinalSegundoNotaCupom(3, 10, 50), 35);
    });
    test('cupom4', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(50, 10, 50), throwsException);
    });
    test('cupom5', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(3, 50, 50), throwsException);
    });
    test('cupom6', () {
      expect(() => definirPrecoFinalSegundoNotaCupom(3, 10, 5000),
          throwsException);
    });
    test('cupom7', () {
      expect(() => definirPrecoFinalSegundoNotaCupom(-50, 10, 50),
          throwsException);
    });
    test('cupom8', () {
      expect(
          () => definirPrecoFinalSegundoNotaCupom(3, -50, 50), throwsException);
    });
    test('cupom9', () {
      expect(() => definirPrecoFinalSegundoNotaCupom(3, 10, -5000),
          throwsException);
    });
  });

  group("Calcular quantidade exata açucar", () {
    test('qtnAcucar1', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(500, 10, 50),
          throwsException);
    });
    test('qtnAcucar2', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(7, 500, 50),
          throwsException);
    });
    test('qtnAcucar3', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(8, 10, 500),
          throwsException);
    });
    test('qtnAcucar4', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(7, -10, 50),
          throwsException);
    });
    test('qtnAcucar5', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(7, 10, -50),
          throwsException);
    });
    test('qtnAcucar6', () {
      expect(() => calcularQuantidadeAcucarManteigaCacau(-7, 10, 50),
          throwsException);
    });
  });
  group("Criar descrição chocolate alergias", () {
    test('alergia1', () {
      expect(() => criaDescricaoChocolateAlergias(500, true, true, true),
          throwsException);
    });
    test('alergia2', () {
      expect(() => criaDescricaoChocolateAlergias(-500, true, true, true),
          throwsException);
    });
  });
}
