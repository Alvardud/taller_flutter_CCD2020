void main() {
  //Operadores
  print("Operadores");
  //Los operadores son operaciones fundamentales que se realizaran a variables
  //Existen distintos tipos de operadores, que pueden ser
  //unarios (para una variable)
  //binarios (para dos variables)
  //o ternarios (para tres variables)

  //Unarios
  print('operadores unarios');
  //Existe operadores de tipo unario al que solo modificaran el estado de una variable o evaluaran un expresion
  //Negacion
  //La negacion, nos permite negar una variable o expresion booleana, esta se denota con el caracter "!"
  //Ejemplo
  bool inicial = true;
  print(!inicial);

  //Asignacion
  //La asignacion nos permite si una variable es de tipo null (que no tiene ningun valor asignado)
  //en caso de que no contenga ningun valor asignado podemos regresar un valor por defecto
  //esta se denota por los caracteres "??"
  //Ejemplo:
  String sinValor;
  print(sinValor ?? "No contiene nigun valor");

  //Incremento - Decremento
  //El incremento y decremento nos permite incrementar un valor numero en una unidad entera de forma automatica
  //El decremento decrementara su valor en una unidad
  //Estas se declaran a través de los caracteres "++"(incremento) "--"(decremento)
  //Ejemplo
  int gestion = 2020;
  print(gestion);
  gestion++;
  print(gestion);
  gestion--;
  print(gestion);

  //Binarios
  print('Operadores binarios');
  //para los operadores binarios, estos mayormente se aplican a las variables de tipo numericas (int, num, double)
  //Entre estos operadores tenemos las operaciones de suma +, resta -, division /, multiplicacion *, obetencion de residuo %
  //Ejemplo
  double multiplicacion = 34 * 1.7;
  print(multiplicacion);
  int residuo =
      30 % 4; //30 dividido entre 4 es 7 y tiene como residuo 2 => 4*7=28+2=30
  print(residuo);

  //Tambien existe operadores de comparacion que nos servira para saber si un valor es:
  // ">"" mayor que, "<" menor que, "==" iguales, ">=" mayor o igual, "<=" menor o igual
  //Nota: el orden es importante, no es lo mismo "=>" que ">=", puede causar errores

  //Tenarios
  print('Operador ternario');
  //Para este operador es donde acutaran 3 valores distintos
  //* una expresion a evaluar (esta debe dar verdadero o falso)
  //* un valor que sera el asignado si es verdad
  //* un valor que sera asignado si es falso
  //Ejemplo:
  int primerValor = 14;
  int segundoValor = 20;
  int mayor = primerValor >= segundoValor ? primerValor : segundoValor;
  print(mayor); //mostrara el mayor valor obtenido
  //En estea caso nuestra expresion a evaluar es si primerValor es mayor o igual a segundoValor
  //en caso de que sea verdad se retornara el valor de primerValor
  //en caso de que sea falso se retornara el valor de segundoValor

  //Operadores e iteradores
  //una declaracion (statement) es una funcion basica especial que nos permitira evaluar expresiones y tomar desiciones al respecto

  //condicionales
  print('Condicionales');
  //if, if es una declaracion condicional, esta se encarga de evaluar una expresion, realizando una accion por verdad y otra por falso
  //ejemplo
  int edad = 23;
  int edadImaginaria = 25;

  if (edad > edadImaginaria) {
    print('Mi edad es menor');
  } else {
    print('Mi edad es mayor');
  }
  //en este caso, la expresion a evaluar es ¿edad es menor que edadImaginaria? en caso de que sea verdad
  //se imprimira "Mi edad es menor"
  //pero en caso de que sea falso, esta se dirigira a la expresion dentro de la palabra clave "else"
  //imprimiento asi "Mi edad es mayor"
  //(Nota) Se pueden anidar expresiones if else una tras otra

  //Iteradores - Bucles
  print('Iteradores-Bucles');
  //Un iterador y/o bucle es una funcion especial que se encarga de realizar procesos hasta que se se cumpla
  //una expresion determinada

  //for, for es un iterador que se encargara de realizar una accion de forma automatica mediante un puntero
  //Ejemplo (para este ejemplo utilizaremos una coleccion de objetos)
  var semana = [
    'lunes',
    'martes',
    'miercoles',
    'jueves',
    'viernes',
    'sabado',
    'domingo'
  ];
  print('Mediante for comun');
  for (int puntero = 0; puntero < 7; puntero++) {
    print(semana[puntero]);
  }
  //Para este caso notese que nuestro iterador utilizara como puntero la varible con el mismo nombre,
  //esta variable iniciara en 0 (para este caso)
  //esta variable iterara hasta que se cumpla la condicion de "puntero menor 7"
  //el puntero incrementara su valor de uno en uno
  //el valor que se imprime en pantalla es el valor al que apunta el puntero dentro de la coleccion
  //Nota: las colecciones inician siempre en la posicion 0

  //Otra forma de iterar es mediante forEach que optimiza el valor del puntero
  //esta solo debe ser aplicados a colecciones
  //Ejemplo:
  print('Mediante for each');
  semana.forEach((dia) {
    print(dia);
  });
  //En este caso nuestra funcion manda "para cada elemento de semana, realizar...", cada elemento al ser iterado
  //sera asignado a la variable dia y luego esta sera mostrada en pantalla

  //while, while es un bucle condicional, a diferencia de for este puede llegar a iterar infinitamente
  //ya que su expresion a evaluar puede no cambiar nunca
  //Ejemplo:
  int mes = 3;
  int mesMeta = 5;
  while (mes == mesMeta) {
    print('aun no es verdad');
    mes++;
  }
  print('ahora si es verdad');
  //Como se puede observar, while iterara mientras no sea verdad la expresion evaluada,
  //cuando esta sea verdad, terminara el ciclo
}
