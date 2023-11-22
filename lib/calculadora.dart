class Calculadora {
  static int calculo(String input) {
    int? numero = int.tryParse(input);

    if (numero != null && numero > 0) {
      int soma = 0;
      for (int i = 1; i < numero; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          soma += i;
        }
      }
      return soma;
    } else {
      return 0;
    }
  }
}
