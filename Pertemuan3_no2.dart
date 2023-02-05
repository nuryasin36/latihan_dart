String? faktorial(int n) {
  var faktorial0 = 1;

  for (int i = n; i >= 1; i--) {
    faktorial0 *= i;
  }

  return "Hasil dari $n! adalah $faktorial0.";
}

void main() {
  print(faktorial(10));
  print(faktorial(20));
  print(faktorial(30));
}
