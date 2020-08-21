void main() {
  //Las colecciones son un conjunto de datos almacenados en una variable en comun, estas nos pueden ayudar
  //a separar conjuntos de datos en un solo espacio
  //Ejemplo:
  var nombres = ['Alvaro', 'Ariel'];
  print(nombres);

  //Existen distintos tipos de colecciones o vectores como muchos los llaman
  print('Listas');
  //Listas, las listas son colecciones simples de datos genericos
  //estos se denotan de la siguiente forma: List<Tipo de dato> nombreVariable
  //Ejemplo:
  List<int> gestiones = [2019, 2020, 2021];
  print(gestiones);

  //Mapas (Tablas hash)
  print('Mapas');
  //Los mapas o tablas hash son colecciones de datos que tiene la particularidad de que sus elementos
  //tienen una clave (key) y un valor (value), asegurando asi que no existan elementos iguales en claves
  //Esta se denota por: Map<tipo de dato de clave, tipo de dato del valor>
  //Ejemplo:
  Map<String, String> alvaro = {'nombre': 'Alvaro Martinez', 'edad': '23'};
  print(alvaro['nombre']);
  //Para este caso nuestra coleccion llamada "alvaro", tiene como tipo de llave un String y como tipo de valor otro String
  //tiene como llaves a (nombre, edad) y como sus valores
  //a ("Alvaro Martinez", "23")

  //los tipos de valores<> tambien pueden ser "dynamic" para que puedan ser de cualquier tipo

  //Existen otros tipos de colecciones como ser "Stack", "Queue"
  //Para poder utilzar estos importar la libreria de colecciones de dart
  //import "dart:collection"

  //Enum
  print('Enum');
  //una coleccion constante de elementos son llamados enum, esta coleccion es utilizada
  //cuando conocemos todos los posibles valores que contiene nuestra coleccion
  //esta no puede estar dentro de una clase o funcion
  //Ejemplo:
  print(dias.jueves);
  dias.values.forEach((dias) {
    print(dias);
  });
}

enum dias {
  lunes,
  martes,
  miercoles,
  jueves,
}
