import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Client extends StatefulWidget {
  const Client({ Key? key }) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtprenom = new TextEditingController();
  TextEditingController txtsexe = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txtphone = new TextEditingController();
  TextEditingController txtmail = new TextEditingController();

  Future<void> AddData() async
  {
    // var url="http://192.168.43.69:82/isig2022/saveclient.php";
    var url="http://127.0.0.1:82/isig2022/saveclient.php";
    final res=await http.post(Uri.parse(url),
    body:{
      "nom":txtnom.text,
      "prenom":txtprenom.text,
      "sexe":txtsexe.text,
      "adresse":txtadresse.text,
      "telephone":txtphone.text,
      "mail":txtmail.text
    });
    Catch(ex) {
      print(ex.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save Client"),
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            new TextField(
                controller: txtnom,
                decoration : InputDecoration(
                  labelText: "Nom",
                  hintText: "Entrer le nom"
                )
              ),
              new TextField(
                controller: txtprenom,
                decoration : InputDecoration(
                  labelText: "Prenom",
                  hintText: "Entrer le prenom"
                )
              ),
              new TextField(
                controller: txtsexe,
                decoration : InputDecoration(
                  labelText: "Sexe",
                  hintText: "Entrer le sexe"
                )
              ),
                new TextField(
                controller: txtadresse,
                decoration : InputDecoration(
                  labelText: "Adresse",
                  hintText: "Entrer l'adresse"
                )
              ),
              new TextField(
                controller: txtphone,
                decoration : InputDecoration(
                  labelText: "Telephone",
                  hintText: "Entrer le num"
                )
              ),
                new TextField(
                controller: txtmail,
                decoration : InputDecoration(
                  labelText: "Email",
                  hintText: "Entrer l'adresse mail"
                )
              ),
               new RaisedButton(
              onPressed: (){AddData();},
              child: Text("Enregistrer"),
              color: Colors.blue,
              ),
          ],
        )
    );
  }
}