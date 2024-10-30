void main(List<String> args) {
  terraineDeJeuxChaine();
}

void terraineDeJeuxChaine() {
  // basicStringDeclaration();
  // catTrad();
  int som = ajouter(4, 8);
  print(som);
}

void basicStringDeclaration() {
  //quote simple
  print('Quote simple');
  final chaine = 'une chaine avec lechaappement de chaine ';
  print(chaine);
  //quote double
  print("avec quote double ");
  final phr = "des 'quotes simple' dans des quote double ";
  print(phr);
  print('des "quote double" dans simple ');
  var femmeNoir = ''' femme nue femme noir 
  vetue dans ta couleur de peau qui vie, de ta forme qui beaute
  J'ai grandi a ton hombre ; la douceur de tes mains bandait mes yeux

  Et voila qu'au coeur de l'ete de midi 
  je te decouvre , terre promis du hau''';
  print(femmeNoir);
}

void catTrad() {
  final w = 'hello';
  final h = "world";
  final ch = w + ' ' + h;
  print(ch);
  int anne = 2000;
  final vh = 'dart est creer en $anne ';
  print(vh);
  final age = 20;
  final howOld = 'je suis ${age <= 18 ? 'Majeur' : 'Mineur'}.';
  print(howOld);
}

int ajouter(int x, int y) => x + y;
