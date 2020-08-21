void main() {
  //Volviendo a las variables vamos a observar sus tipos
  //Tipos

  //Variable de almacenamiento específico
  print('Variable de almacenamiento específico');

  //String, una variable de tipo String almacenara una cadena de "texto", dichas cadenas de texto las
  //almacenaremos en entre comillas simples '' o comillas dobles ""
  //Ejemplo:
  String nombre = "Alvaro";
  String apellido = "Martinez";
  print(nombre);
  print(apellido);

  //int, una variable de tipo int almacenara un valor entero (un número que se encuentre en el espacio de los enteros)
  //Ejemplo:
  int edad = 23;
  print(edad);

  //double, una variable de tipo double, almacenara un valor real (un número que se encuentre en el espacio de los reales)
  //Ejemplo:
  double altura = 1.72;
  print(altura);

  //bool, una variable de tipo bool, almacenara un estado (verdadero o falso)
  //Ejemplo:
  bool estudiante = true;
  print(estudiante);

  //variables de almacenamiento dinamico
  print('Variable de almacenamiento dinamico');

  //num, una variable de tipo num puede almacenar un valor real
  //Ejemplo:
  num numero = 156.0;
  print(numero);

  //dynamic, un variable de tipo dynamic puede almacenar cualquier valor en especifico (int, String, double, bool, num)
  //Ejemplo
  dynamic valor = "puedo ser cualquier valor";
  print(valor);
  valor = 4;
  print(valor);

  //var, una variable de tipo var al igual que dynamic puede almacenar cualquier valor en especifico
  //pero con la particularidad que esta se vuelve en una constante en su tipo de valor
  //Ejemplo:
  var genero = "masculino"; //En este caso nuestra variable sera de tipo String
  print(genero);
  //Si intentaramos cambiar su tipo a otro este nos devolvera un error
  //Por ejemplo: (descomentar la linea de ejemplo)
  //genero = false;

  //Constantes
  print('Valores de tipo constante');
  //Una constante es un valor que una vez inicializado no se lo podra volver a asignar un valor,
  //este se lo antepone antes de asignar el tipo variable y el nombre de la variable
  //por ejemplo tenemos

  //const, una variable de tipo const sera uno que no podra ser alterado en ningun momento
  //este debe ser siempre inicializado con un valor
  //Ejemplo
  const String constante = "Soy una constante";
  print(constante);
  //si a mi variable "constante" intentara darle un nuevo valor este me dara un error
  //Ejemplo: (descomentar la linea de ejemplo)
  //constante = "nuevo valor con error";

  //final, una variable de tipo final es una que no necesariamente debe ser inicializado con un valor,
  //este tipo de constante mayormente son utilizados en constructores de objetos POO
  //Ejemplo: (para este ejemplo solo utilizaremos la version inicializada al comienzo, la version en la
  //que no esta inicializada lo veremos en POO)
  final int gestion = 2020;
  print(gestion);
  //al igual que const una vez inicializada, su valor no puede ser cambiado
}
