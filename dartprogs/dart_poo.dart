class Note {
  final matiere;
  double note;
  double coef;
  Note({required this.matiere, this.note = 0, this.coef = 1});
  @override
  String toString() {
    return '\n note :$matiere --> $note (coef :$coef)';
  }

  bool est_validee() => note >= 10 ? true : false;
  // surcharge de l'operateur +
  double operator +(double bonus) => this.note += bonus;
}

class Personne {
  String? nom;
  String? numTel;
  bool? estMarie;
  int? age;
  Personne(this.nom, this.numTel, this.estMarie, this.age);
  @override
  String toString() {
    String str = '-' * 100;
    str += "\n nom : $nom"
        "\n numero de telephone: $numTel"
        "\n marier? : $estMarie"
        "\n age : $age";
    return str;
  }
}

class Etudiant extends Personne {
  Set<Note> listNote = {};
  final _codeEtudiant = DateTime.now().microsecondsSinceEpoch.toString();
  Etudiant(String? nom, String? numTel, bool? estm, int age)
      : super(nom, numTel, estm, age) {
    listNote.add(Note(matiere: 'Base de donnees'));
    listNote.add(Note(matiere: 'algo3'));
    listNote.add(Note(matiere: 'Analyse3'));
    listNote.add(Note(matiere: 'Archi3', note: 13, coef: 3));
  }
  @override
  String toString() {
    return '-' * 100 +
        "\n codeEtudiant $_codeEtudiant \n" +
        super.toString() +
        "${listNote.join(':')}\n" +
        "-" * 100;
  }

  double calculMoyen() {
    double som = 0;
    num somcoef = 0;
    for (var n in listNote) {
      som += n.note * n.coef;
      somcoef += n.coef;
    }
    return som / somcoef;
  }
}

void main(List<String> args) {
  // on creer une instance
  // Note not = new Note(matiere: 'informatique', note: 17, coef: 4);
  // not.note = 18.5;
  // print(not);
  // // utilisation de l'operateur +
  // not + 1;
  // print('avec bonus: $not');
  // Personne pers = new Personne('bamba', '78 144 56 19', false, 25);
  // print(pers);
  Etudiant etud = Etudiant('Bamba', '78 144 56 19', true, 25);
  print(etud);
}
