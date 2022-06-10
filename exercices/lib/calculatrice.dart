import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

TextEditingController txtnbr1= new TextEditingController();
TextEditingController txtnbr2= new TextEditingController();
TextEditingController txtresult= new TextEditingController();

void addition(){
  int n1=int.parse(txtnbr1.text);
  int n2=int.parse(txtnbr2.text);

  txtresult.text=(n1+n2).toString();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Calculatrice"),
        backgroundColor: Colors.blue,
       ),
       body: ListView(
        children: [
          new TextField(
            controller: txtnbr1,
            decoration: InputDecoration(
              labelText: "Nombre 1",
              hintText: "Entrer votre nom"
            ),
          ),
           SizedBox(width: 20)
          ,
          new TextField(
            controller: txtnbr2,
            decoration: InputDecoration(
              labelText: "Nombre 2",
              hintText: "Entrer votre nombre2"
            ),
          ),
          SizedBox(width: 20)
          ,        
           RaisedButton(
            onPressed: (){addition();},
            child: Text("Enregistrer"),
            color: Colors.blue,
          ) ,
           SizedBox(width: 20)
          ,
          new TextField(
            controller: txtresult,
          
            enabled: true,
            decoration: InputDecoration(
              labelText: "Resultat",
              hintText: "Entrer votre reponse"
            ),
          )         
        ],
      ),
    );
  }
}