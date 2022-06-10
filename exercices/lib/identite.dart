import 'package:flutter/material.dart';

class Identite extends StatefulWidget {
  const Identite({ Key? key }) : super(key: key);

  @override
  State<Identite> createState() => _IdentiteState();
}

class _IdentiteState extends State<Identite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IDENTIFICATION"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          new TextField(
            controller: null,
            decoration: InputDecoration(
              labelText: "Nom",
              hintText: "Entrer votre nom"
            ),
          ),
           SizedBox(width: 20)
          ,
          new TextField(
            controller: null,
            decoration: InputDecoration(
              labelText: "Adresse",
              hintText: "Entrer votre adresse"
            ),
          ),
          SizedBox(width: 20)
          ,
          new TextField(
            controller: null,
            keyboardType: TextInputType.phone,
            enabled: true,
            decoration: InputDecoration(
              labelText: "Telephone",
              hintText: "Entrer votre numero de telephone"
            ),
          ) ,
           SizedBox(width: 20)
          ,
          RaisedButton(
            onPressed: (){},
            child: Text("Enregistrer"),
            color: Colors.blue,
          )         
        ],
      ),
    );
  }
}