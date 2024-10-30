void main(List<String> args) {
  //classicalFonct();
  optionalParameter();
}

void classicalFonct() {
  fonctionClassique();
}

void optionalParameter() {
  // fparametreOptionnels();
  // fparametreOptionnels("Bamba mboup", 24);
  // fparametreOptionnels("Ahmadou");
  // fparametreOptionnels(12); error
  // fparametreNommer(nom: 'Bamba');
  // fparametreNommer(salutation: 'comment allez vous');
  // fparametreNommer(nom: 'Ahmadou bamba', salutation: 'Bonsoir');
  // fparametreNommer(salutation: 'bonsoir', nom: 'Khadim'); //l'ordre import peu
  // fparametreNommer();
  print(suitArithm(7, pos: 2));
  print(suitArithm(7, pos: 2, uo: 1));
  print(suitArithm(4));
}

void fonctionClassique() {
  afficherNom('Bamba Mboup');
  final sum = add(5, 6);
  print('5 + 6 = $sum');
  print('le factoriel de 10 est ${factoriel(10)}.');
}

void afficherNom(String nom) {
  print('mon nom est: $nom');
}

int add(int a, int b) {
  return a + b;
}

int factoriel(int n) {
  if (n <= 0)
    return 1;
  else
    return n * factoriel(n - 1);
}

void fparametreOptionnels([String? nom, int? age]) {
  final vraiNom = nom ?? 'inconnu';
  final vraiAge = age ?? 0;
  print('$vraiNom a $vraiAge annee(s).');
}

void fparametreNommer({String? nom, String? salutation}) {
  final sonNom = nom ?? 'personne mystere';
  final hi = salutation ?? 'Bonjour';
  print('$hi ,$sonNom.');
}

int suitArithm(int n, {int pos = 1, int uo = 1}) {
  if (n == 0)
    return uo;
  else
    return n + suitArithm(pos: pos, n - 1, uo: uo);
}
