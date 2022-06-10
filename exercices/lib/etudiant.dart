import 'package:exercices/person.dart';

class Etudiant extends Personne{
  String promotion="";
  String option="";

  String get getPromotion{
    return promotion;
  }
  void set setPromotion(String promotion){
    this.promotion = promotion;
  }
  String get getOption{
    return option;
  }
  void set setOption(String option){
    this.option = option;
  }

  void student(){
    print(id);
    print(nom);
    print(postnom);
    print(prenom);
    print(sexe);
    print(dateNaissance);
    print(age);
    print(poids);
    print(taille);
    print(promotion);
    print(option);
  }
}