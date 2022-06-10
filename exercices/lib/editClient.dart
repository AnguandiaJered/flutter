import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditClient extends StatefulWidget {
  const EditClient({ Key? key }) : super(key: key);

  @override
  State<EditClient> createState() => _EditClientState();
}

class _EditClientState extends State<EditClient> {
  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtprenom = new TextEditingController();
  TextEditingController txtsexe = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txtphone = new TextEditingController();
  TextEditingController txtmail = new TextEditingController();
  TextEditingController txtid = new TextEditingController();

  Future<void> editData() async
  {
    var url="http://localhost:82/isig2022/editclient.php";
    final res=await http.put(Uri.parse(url),
    body:{
      "id":txtid.text,
      "nom":txtnom.text,
      "prenom":txtprenom.text,
      "sexe":txtsexe.text,
      "adresse":txtadresse.text,
      "telephone":txtphone.text,
      "mail":txtmail.text
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Client"),
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            new TextField(
                controller: txtid,
                decoration : InputDecoration(
                  labelText: "Code",
                  hintText: "Entrer le code"
                )
              ),
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
              onPressed: (){editData();},
              child: Text("Enregistrer"),
              color: Colors.blue,
              ),
          ],
        )
    );
  }
}