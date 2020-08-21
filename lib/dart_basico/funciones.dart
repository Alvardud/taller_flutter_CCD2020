void main() {
  //Funciones
  print('Funciones');
  //Una funcion es un proceso subdivido en el programa, estas nos sirven para modularizar los procesos de nuestros programas
  //a continuación notara que existe codigo fuera del entorno o llaves {}, esto se debe a que las funciones
  //pueden ser utilizadas y llamadas en cualquier lugar de nuestro programa
  //Ejemplo:
  imprimir();
  //note que al llamar a la función "imprimir()", esta se dirigira al proceso que se encuentra fuera de nuestras llaves{}
  //imprimiendo lo que tiene dentro "Hola mundo"
  //void main(){} tambien es una funcion y es nuestra funcion principal al tener como nombre "main"
  //las funciones pueden o no pueden retornar un valor esto depende de nuestra palabra clave de retorno en nuestra funcion
  //en nuestro primer ejemplo "imprimir()", no retorna un valor al ser de tipo "void"
  //Ejemplo
  String saludo = funcionSaludo();
  print(saludo);

  //A las funciones podemos enviar uno o varios valores para que puedan ser utilzados estos se enviaran
  //a través de los parentesis de las funciones
  //Ejemplo
  int valor1 = 15;
  int valor2 = 49;
  print(suma(valor1, valor2));
}

void imprimir() {
  print('Hola mundo');
}

String funcionSaludo() {
  //esta funcion retorna un valor, en este caso una cadena por que asi denota su palabra clave
  //para retornar valores, se debe colocar la palabra reservada "return"
  return "Hola como estas";
}

int suma(int primerValor, int segundoValor) {
  //en este caso, nuestra funcion obtiene dos valores "primerValor y segundoValor"
  //estos solo pueden ser utilzados dentro de la funcion
  return primerValor + segundoValor;
}
