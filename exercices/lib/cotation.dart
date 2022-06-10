import 'package:flutter/material.dart';

class Cotation extends StatefulWidget {
  const Cotation({ Key? key }) : super(key: key);

  @override
  State<Cotation> createState() => _CotationState();
}

class _CotationState extends State<Cotation> {

  //l'objet aui permet de recuperer les elements saisies par l'utilisateur
  TextEditingController txtcote1=new TextEditingController();
  TextEditingController txtcote2=new TextEditingController();
  TextEditingController txtcote3=new TextEditingController();
  TextEditingController txtcote4=new TextEditingController();
  TextEditingController txtcote5=new TextEditingController();
  TextEditingController txtpourcentage=new TextEditingController();
  TextEditingController txtmention=new TextEditingController();

  void calculer(){
    double p1=double.parse(txtcote1.text);
    double p2=double.parse(txtcote2.text);
    double p3=double.parse(txtcote3.text);
    double p4=double.parse(txtcote4.text);
    double p5=double.parse(txtcote5.text);

    double pourcentage =((p1+p2+p3+p4+p5)*100)/200;
    
    txtpourcentage.text=pourcentage.toString()+" %";
    if(pourcentage<50 && pourcentage>=40){
      txtmention.text="A";
    }else if(pourcentage>=50 && pourcentage<=69){
      txtmention.text="S";
    }else if(pourcentage>69 && pourcentage<=79)
    {
      txtmention.text="D";
    }else if(pourcentage>=80 && pourcentage<=89){
      txtmention.text="GD";
    }else if(pourcentage>=90 && pourcentage <=100){
      txtmention.text="TGD";
    }else if(pourcentage>=30 && pourcentage<40){
      txtmention.text="NAF";
    }else{
      txtmention.text="cote Invalide";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotation"),
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
              new TextField(
                controller: txtcote1,
                decoration : InputDecoration(
                  labelText: "Informatique /40",
                  hintText: "Entrer le points"
                )
              ),
              new TextField(
                controller: txtcote2,
                decoration : InputDecoration(
                  labelText: "Programmation web /30",
                  hintText: "Entrer le points"
                )
              ),
              new TextField(
                controller: txtcote3,
                decoration : InputDecoration(
                  labelText: "Programmation flutter /30",
                  hintText: "Entrer le points"
                )
              ),
              new TextField(
                controller: txtcote4,
                decoration : InputDecoration(
                  labelText: "Administration reseau /60",
                  hintText: "Entrer le points"
                )
              ),
              new TextField(
                controller: txtcote5,
                decoration : InputDecoration(
                  labelText: "CCNA1 /40",
                  hintText: "Entrer le points"
                )
              ),
            new RaisedButton(
              onPressed: (){calculer();},
              child: Text("Calculer"),
              color: Colors.blue,
              ),
            new TextField(
              controller: txtpourcentage,
              decoration: InputDecoration(
                labelText: "Pourcentage",
                hintText: "Pourcentae"
              ),
            ),
            new TextField(
              controller: txtmention,
              decoration: InputDecoration(
                labelText: "Mention",
                hintText: "mention"
              ),
            ),
            
          ],
        ),
    );
  }
}