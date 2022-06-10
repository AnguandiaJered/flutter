import 'package:exercices/enseignant.dart';
import 'package:exercices/etudiant.dart';
// import 'package:exercices/person.dart';
import 'package:exercices/identite.dart';
import 'package:exercices/calculatrice.dart';
import 'package:exercices/cotation.dart';
import 'package:exercices/calculator.dart';
import 'package:exercices/client.dart';
import 'package:exercices/personne.dart';
import 'package:exercices/update.dart';
import 'package:exercices/deleteP.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

void main() {
  // runApp(MaterialApp(home: Identite()));
  runApp(MaterialApp(home: EditPersonne()));
  //runApp(MaterialApp(home: DeletePersonne()));
  //  runApp(MaterialApp(home: Personne()));
  // runApp(MaterialApp(home: EditClient()));
  // runApp(MaterialApp(home: DeleteClient()));
  // personne(20, 'F');
  //  bojour(5);
  // factoriel(4);
  // equotion(1,2,3);
  // moyenne(2, 3, 5, 6, 4);


//=================================
  // Enseignant ens = new Enseignant();
  // ens.id=1;
  // ens.nom="John";
  // ens.postnom="Ted";
  // ens.prenom="Bob"; 
  // ens.sexe="M";
  // ens.dateNaissance="1997-08-09";
  // ens.age=50;
  // ens.poids=80;
  // ens.taille=1;
  // ens.matricule="9463792";
  // ens.enseigne();

// //=====================================
  // Etudiant etude = new Etudiant();
  //  etude.id=1;
  //  etude.nom="Fazila";
  //  etude.postnom="Muhabura";
  //  etude.prenom="Grace"; 
  //  etude.sexe="F";
  //  etude.dateNaissance="2000-02-01";
  //  etude.age=40;
  //  etude.poids=70;
  //  etude.taille=2;
  //  etude.promotion="L1";
  // etude.option="IG";
  // etude.student();
}

// la condition

 var age=1;
  var genre;
  void personne(var age,var genre){
    if(age < 18 && genre == "M"){
      print("Vous etes un mineur ") ;
    }else if(age < 18 && genre == "M"){
      print("Vous etes une mineur ") ;
    }
    else if(age > 18 && genre == "M"){
      print("Vous etes un majeur ") ;
    }else if(age > 18 && genre == "F"){
      print("Vous etes une majeur ") ;
    }
  }

// la boucle

  var nombre;

  void bojour(var nombre){
    for(var i=1;i<= nombre; i++){
      print("Bonjour le monde") ;
    }    
  }

// factoriel
var num,factorial=1;
void factoriel(var num){
  for(int i=1;i<=num;i++)
  {
    factorial=factorial*i;
    
  }
    print(factorial);

}


// equotion du second degre

  var a,b,c;
 
void equotion(var a,var b,var c){

  print("equation : ${a==1 ? "" : a}x² + ${b}x + $c");

  double delta = b * b - 4.0 * a * c;

  if (delta > 0.0) {
    double x1 = (-b + Math.pow(delta, 0.5)) / (2.0 * a);
    double x2 = (-b - Math.pow(delta, 0.5)) / (2.0 * a);

    print("Les solutions sont ${x1} et ${x2}");

  } else if (delta == 0.0) {
    double x1 = -b / (2.0 * a);
    print("La solution est " + x1.toString());

  } else {
    print("l'equation n'a pas de solution reelle.");
  }
}

void moyenne(int a, int b, int c, int d, int e) {
  double result = (a + b + c + d + e) / 5;
  print(result) ;
}





// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
