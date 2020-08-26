import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EjemploWidget(),
    );
  }
}

class EjemploWidget extends StatefulWidget {
  @override
  _EjemploWidgetState createState() => _EjemploWidgetState();
}

class _EjemploWidgetState extends State<EjemploWidget> {
  int counter;
  String title;

  @override
  void initState() {
    super.initState();
    counter = 0;
    title = "Titulo de la aplicacion";
  }

  Widget textos() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Numero de veces que presionaste el boton'),
        Text('$counter', style: TextStyle(fontSize: 32))
      ],
    );
  }

  void incrementar() {
    setState(() {
      counter = counter + 1;
      if (counter > 5) {
        title = "Boton presionado mas de 5 veces";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        width: double.infinity,
        child: textos(),
      ),
    );
  }
}


