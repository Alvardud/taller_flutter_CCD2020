void main() {
  //las funciones de alto orden son aquellas que nos pueden ayudar a simplificar tareas en expresiones
  print('lambdas');
  //lambdas
  //Los lambdas son funciones expresadas con un "arrow function" (funcion flecha), estas funciones solo
  //evaluara un proceso
  //Ejemplo:
  List<String> meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'];
  meses.forEach((dia) => print(dia));
  //Notese que en este caso el codigo se simplifico a solo una linea de codigo, gracias a los lambdas
  //Los lambdas tambien pueden aplicarse a funciones que usted cree

  print('funciones anonimas');
  //Funciones anonimas
  //las funciones anonimas son aquellas que pueden recibir otra funcion como uno de sus parametros
  //Ejemplo
  anonima(() => sumar(2, 3));
  //notese que se envio a la funcion "anonima" como parametro la funcion suma
}

void anonima(Function() funcion) => funcion();

void sumar(int valor1, int valor2) => print(valor1 + valor2);
