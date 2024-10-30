void main(List<String> args) {
  terraineDeJeuxVariables();
}

void terraineDeJeuxVariables() {
  //typeDeBase();
  //variablesNonType();
  //interpolationDeType();
  varibleImutable();
}

void typeDeBase() {
  int quatre = 4;
  double pi = 3.14;
  num unNombre = 4.12; // num peut etre int ou double
  bool oui = true;
  bool non = false;
  int? nothing; // variable non initialiser null
  num? nothing2;
  print(quatre);
  print(pi);
  print(unNombre);
  print(oui);
  print(non);
  print(nothing);
  print(nothing2);
}

void variablesNonType() {
  dynamic camelon = "yahoo !!";
  print(camelon.runtimeType);
  camelon = 3.14;
  print(camelon.runtimeType);
  camelon = [1, 2, 3];
  print(camelon.runtimeType);
}

void interpolationDeType() {
  var unInt = 3;
  var unDouble = 3.14;
  var unBool = true;
  print(unBool);
  print(unBool.runtimeType);
  print(unInt);
  print(unInt.runtimeType);
}

void varibleImutable() {
  final int imInt = 1000;
  final double imDouble = 10.56;
  print(imInt);
  print(imDouble);

  // la precision du type est optionel avec final
  final unVar;
  final unAutre;
  unVar = 3;
  unAutre = 3.54;
  // unVar = 43; error
  // imInt = 56; error
  print(unVar);
  print(unAutre);
  const unConstant = 4;
  print(unConstant);
}
