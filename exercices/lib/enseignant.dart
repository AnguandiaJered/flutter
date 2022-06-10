import 'package:exercices/person.dart';

class Enseignant extends Personne{
  String matricule="";

  String get getMatricule{
    return matricule;
  }
  void set setMatricule(String matricule){
    this.matricule = matricule;
  }

  void enseigne(){
    print(id);
    print(nom);
    print(postnom);
    print(prenom);
    print(sexe);
    print(dateNaissance);
    print(age);
    print(poids);
    print(taille);
    print(matricule);
  }
}