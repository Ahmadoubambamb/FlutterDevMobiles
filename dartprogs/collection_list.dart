void main(List<String> args) {
  //creation de list vide de chaine de caractere
  /* final List<String> jour = [];
  print('la est vide ? :${jour.isEmpty}');
  //ajoutons des element
  jour.add('Lundi');
  jour.add('Mardi');
  jour.add('Mercredi');
  jour.add('Jeudi');

  print('$jour est taille ${jour.length}');
  jour.addAll(['Vendredi', 'Samedi', 'Dimenche']);
// utilisons first et last
  print(
      'le premier jour de la semaine est ${jour.first} et le dernier est ${jour.last}.');
  var listAleatoire = jour.toList();
  listAleatoire.shuffle();
  print('La copie est: $listAleatoire');
  print('${listAleatoire.join(' ; ')}.');
  List<int> nombre = [];
  print('${nombre.isEmpty}');
  nombre.addAll([1, 4, 6, 12, 9]);
  print(nombre);
  nombre.sort();

  print('apres tri $nombre.');
  var newJour = jour.map((unjour) {
    return unjour.toUpperCase();
  }).toList();
  print('En majiscule: ${newJour.join(' , ')}');
*/
  // la methode reduce
  /*var nbre = <double>[1, 3, 4, 6, 7, 8];
  // somme avec reduce
  var som = nbre.reduce((value, element) => value + element);
  print('la somme des $nbre est : $som');
  // le max de la liste
  var max = nbre.reduce((value, element) => value > element ? value : element);
  print('le max de la liste $nbre est $max.');
  //pour calculer la moyenne d'une liste aussi
  var moy = nbre.reduce((value, element) => value + element / nbre.length);
  print('la moyenne de $nbre est: $moy.');*/
  // methode forEach et boucle for in
  final elemt = <double>[3, 12, 5, 6, 7, 8];
  elemt.forEach((element) {
    print('${2 * element}');
  });
  for (var n in elemt) print(n);
  final replacements = <double>[2, 5, 6];
  elemt.replaceRange(2, 5, replacements);
  print(elemt);
  elemt.clear(); // clear efface tout
  print(elemt);
}
