// import 'dart:ffi';

class Personne{
  int id=0;
  String nom="";
  String postnom="";
  String prenom="";
  String sexe="";
  int age=0;
  String dateNaissance="1999-08-08";
  double  poids=0.0;
  double  taille=0.0;

  int get getId{
    return id;
  }
  void set setId(int id){
    this.id = id;
  }
  String get getNom{
    return nom;
  }
  void set setNom(String nom){
    this.nom = nom;
  }
  String get getPostnom{
    return postnom;
  }
  void set setPostnom(String postnom){
    this.postnom = postnom;
  }
  String get getPrenom{
    return prenom;
  }
  void set setPrenom(String prenom){
    this.prenom = prenom;
  }
  String get getSexe{
    return sexe;
  }
  void set setSexe(String sexe){
    this.sexe = sexe;
  }
  int get getAge{
    return age;
  }
  void set setAge(int age){
    this.age = age;
  }
  String get getDatenaisse{
    return dateNaissance;
  }
  void set setDatenaisse(String dateNaissance){
    this.dateNaissance = dateNaissance;
  }

  double  get getPoids{
    return poids;
  }
  void set setPoids(double  poids){
    this.poids = poids;
  }
  double  get getTaille{
    return taille;
  }
  void set setTaille(double taille){
    this.taille = taille;
  }

  void identite(){
    print(id);
    print(nom);
    print(postnom);
    print(prenom);
    print(sexe);
    print(dateNaissance);
    print(age);
    print(poids);
    print(taille);
  }
}