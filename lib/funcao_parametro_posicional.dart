double calcularSalarioFuncionario(double salario, double horasExtras,
    {double diasMes = 30, double? faltas, double? diasAtestado}) {
  if (faltas != null) {
    faltas = faltas - diasAtestado!;
    double descontoFaltas = ((faltas * diasMes) / 100) * 10;
    horasExtras = horasExtras * 10;
    salario = (salario + horasExtras) - descontoFaltas;
    return salario;
  } else {
    horasExtras = horasExtras * 10;
    salario = salario + horasExtras;
  }
  return salario;
}
