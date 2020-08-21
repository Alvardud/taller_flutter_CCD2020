void main() {
  //Uno de los problemas que podemos encontrarnos a la hora, y una buena practica para que no caigan nuestros
  //programas es el manejo de errores (excepciones)
  //Este manejo de errores se manejara de 3 formas
  //los procesos a evaluar
  //si incurre en un error en dichos procesos, se ejecutara otro proceso
  //se pueden ejecutar procesos aunque se caiga en errores
  //Ejemplo:
  try {
    var findeSemana = ['viernes', 'sabado', 'domingo'];
    print(findeSemana[3]);
  } catch (e) {
    //En este caso si incurre en un error se correran estos procesos y el error se almacenara en la variable "e"
    print('Entro en la excepcion, por que ocurrio un error');
    print(e); //mostramos en pantalla cual es la causa del error (opcional)
  } finally {
    //Este codigo se ejecuta de todos modos, exista o no exista error
    print('Sentencia final');
  }

  //Como podemos ver en este caso la sentencia se dirigira a la excepcion ya que no existe un valor en el puntero "3"
  //puesto que las colecciones inician desde la posicion 0, tenemos 0, 1 y 2 como posiciones con valor
  //por eso es que se dirigio a la excepcion, si intentamos realizar el codigo sin la excepcion
  //la aplicacion frenara bruscamente
  //Ejemplo: (descomentar la linea de abajo)
  //print(findeSemana[3])
}
