void main() {
  //Los objetos son bastante importantes para programar en flutter, ya que:
  //Dart, es un lenguaje totalmente orientado a objetos, incluso el valor mas simple de dos estados
  //"bool" es un objeto

  print('Orientacion a objetos');
  //Un objeto puede de disponer de caracteristicas (variables) y funciones
  //veamos un objeto bastante simple
  Persona persona = Persona();
  //Como observamos ahora tenemos un nuevo "Tipo" de "variable", una variable de tipo "Persona"
  //esto se debe a que construimos un objeto que sera una persona, esta persona si vemos debajo de nuestra funcion
  //tiene las caracteristicas de tener un nombre una edad y una funcion para mostrar ambos atributos
  //Ej:
  print(persona.nombre);
  persona.mostrar();
  //Como podemos ver, esto imprime primero el nombre de la persona
  //Luego accede a la funcion mostrar y realiza los procesos que tenga dentro

  //El paradigma orientado a objetos es un amplio campo con reglas especificas
  //Se recomienda como programador
  //profundizar mas en este paradigma para tener mejores practicas de programación
}

///Cada objeto debe ser creado bajo una clase, un objeto no es mas que una instancia de una clase
class Persona {
  //Atributos, caracteristicas, variables
  //estos sera las caracteristicas prinicipales de nuestro objeto
  final nombre = "Alvaro";
  final edad = 23;

  //El constructor es bastante importante ya que este nos permitira crear objetos
  Persona();

  //Funciones, las clases pueden tener funciones para facilitar procesos dentro de estos
  void mostrar() {
    print(nombre);
    print(edad);
  }
}
