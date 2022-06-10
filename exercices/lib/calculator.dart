import 'package:flutter/material.dart';


class Calculators extends StatefulWidget {
  const Calculators({ Key? key }) : super(key: key);

  @override
  State<Calculators> createState() => _CalculatorsState();
}

class _CalculatorsState extends State<Calculators> {

  final signes = ["+","-","/","*"];
  String? value;
//l'objet permet de recuper l'elemnt saisie par l'utilisateur et
//manipuler l'interne
TextEditingController txtnombre1 = new TextEditingController();
TextEditingController txtnombre2 = new TextEditingController();
TextEditingController txtresult = new TextEditingController();
//TextEditingController sig = new TextEditingController();

  void addition(){
    int n1 = int.parse(txtnombre1.text);
     int n2 = int.parse(txtnombre2.text);

     txtresult.text=(n1+n2).toString();
    
  }

  void Calculer(){
     int n1 = int.parse(txtnombre1.text);
     int n2 = int.parse(txtnombre2.text);
   
      
      if(value=="*"){
txtresult.text=(n1*n2).toString();
      }else if(value=="+"){
txtresult.text=(n1+n2).toString();
      }else if(value=="-"){
        txtresult.text=(n1-n2).toString();
      }else if(value=="/"){
        if(n2==0){
      txtresult.text="Impossible division par 0";
        }else{
  txtresult.text=(n1/n2).toString(); 
        }
        
      }else{
         txtresult.text="choisissez un signe";
      }


  }

void Refresh(){
  
     txtnombre1.text="";
     txtnombre2.text="";
     txtresult.text="";
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:Text("Calculatrice"),
      backgroundColor: Colors.orangeAccent,
      ),
      body:ListView(
        children: [
       
                 TextField(
             keyboardType: TextInputType.number,
            controller: txtnombre1,
            decoration:InputDecoration(
              labelText: "Nombre1",
              hintText: "Entrer le Nombre1 ",
              fillColor: Colors.deepOrange,
              focusColor:  Colors.deepOrange,
              
            )
          ),
            
           SizedBox(width:30,height:30),

          Container( 
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(color: Colors.black,width:4)),
             

            child: DropdownButton <String>(items: signes.map(buildMenuItem).toList(),
         isExpanded: true,
           value: value,
           
           iconSize: 36,
            icon:Icon(Icons.arrow_drop_down,color: Colors.black,),
            onChanged: (value)=> setState(() =>
              this.value=value,),
            ),
          ),
 SizedBox(width:30,height:30),

                        TextField(
             keyboardType: TextInputType.number
             ,
            controller: txtnombre2,
            decoration:InputDecoration(
              labelText: "Nombre2",
              hintText: "Entrer le Nombre2",
              fillColor: Colors.blue,
              focusColor:  Colors.blue,
            )
          ),

        
 
            RaisedButton(onPressed: (){ Calculer();},
          child: Text("Calculer"),
          color:Colors.orangeAccent,),
                       new  TextField(
            
            controller: txtresult,
            enabled: false,
            decoration:InputDecoration(
              labelText: "Reponse",
              hintText: "Reponse",

              fillColor: Colors.blueGrey,
              focusColor:  Colors.blueGrey,
            )
          ),
        
        ],
      )
      
    
    ); 

  } 
          DropdownMenuItem<String> buildMenuItem(String item)=>
        DropdownMenuItem(value: item,
        child: Text(item,
        style:TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20)),);

}