void main(List<String> args) {
  //affectation de la fonction add ;
  var mavarFn = add;
  print('Resultat de mavarfn est ${mavarFn(4, 6)}.');
  nouveauTypeFonction maVarfn1 = add;
  nouveauTypeFonction mavarfn2 = mult;
  print('Resultat de mavarfn1 est ${maVarfn1(3, 2)}.');
  print('resultat de mavarfn2 est ${mavarfn2(15, 2)}.');
  print('les nombres impair ');
  afficher(estImpair);
}

int add(int x, int y) {
  return x + y;
}

int mult(int x, int y) {
  return x * y;
}

typedef nouveauTypeFonction = int Function(
    int a, int b); // declaration d'un nouveau type de function

bool estPair(int a) {
  return (a % 2 == 0);
}

bool estImpair(int a) {
  return (a % 2 != 0);
}

void afficher(bool varFonction(int value)) {
  for (int i = 0; i < 10; i++) if (varFonction(i)) print(i);
}
