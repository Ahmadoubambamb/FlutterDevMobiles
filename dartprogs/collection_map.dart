void main(List<String> args) {
  var superficie = Map<String, int>();
  superficie = {"Dakar": 577, "Kaolack": 1278, "Nioro": 328};
  // ajoutons de nouvelle valeur
  superficie["Tamba"] = 45534;
  superficie["Fatick"] = 4782;
  superficie.forEach((key, value) {
    print(
        '${key.padRight(15)} --> $value'); // padRight permet de faire des espace a gauche
  });
  printEmployer();
}

void printEmployer() {
  Map employers = {
    200: {"nom": "Bamba Mboup", "service": "Compatibilite", "salaire": 800000},
    201: {"nom": "Ahmadou Mboup", "service": "Markting", "salaire": 700000},
    202: {"nom": "Bamba Fall", "service": "Info", "salaire": 900000}
  };
  print('-' * 85);
  String str1 = '|' + 'ID'.padLeft(20) + '|';
  employers[200].keys.forEach((element) {
    str1 += element.toString().padLeft(20) + '|';
  });
  print(str1);
  print('-' * 85);
  employers.forEach((keyEmploey, dataEmployer) {
    print("|${keyEmploey.toString().padLeft(20)}"
        "|${dataEmployer['nom'].toString().padLeft(20)}"
        "|${dataEmployer['service'].toString().padLeft(20)}"
        "|${dataEmployer['salaire'].toString().padLeft(20)}|");
    print('-' * 85);
  });
}
