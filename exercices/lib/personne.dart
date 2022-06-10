import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Personne extends StatefulWidget {
  const Personne({ Key? key }) : super(key: key);

  @override
  State<Personne> createState() => _PersonneState();
}

class _PersonneState extends State<Personne> {
  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txttelephone = new TextEditingController();

  //fonction asych

  Future<void> AddData() async {
    var url = "http://localhost:82/isig_2020/postdata.php";
    final reponse = await http.post(Uri.parse(url), body: {
      "nom": txtnom.text,
      "adresse": txtadresse.text,
      "telephone": txttelephone.text
    });
    Catch(ex) {
      print(ex.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("IDENTIFICATION"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          new TextField(
            controller: txtnom,
            decoration: InputDecoration(
                labelText: "Entrez votre nom", hintText: "Entrez votre nom"),
          ),
          SizedBox(
            width: 20,
          ),
          new TextField(
            controller: txtadresse,
            decoration: InputDecoration(
                labelText: "Entrez votre adresse",
                hintText: "Entrez votre adresse"),
          ),
          SizedBox(
            width: 20,
          ),
          new TextField(
            controller: txttelephone,
            decoration: InputDecoration(
                labelText: "Entrez votre contact",
                hintText: "Entrez votre contact"),
          ),
          SizedBox(
            width: 20,
          ),
          new RaisedButton(
            onPressed: () {
              AddData();
            },
            child: Text("Enregistrer"),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}