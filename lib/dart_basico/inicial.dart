///Archivo principal de dart
///el archivo Main es el principal y la ruta inicial donde se encuentra tu función inicial
///y donde se empezara a  ejecutar tus programas en dart
void main() {
  //impresion simple en consola
  print('Hola mundo y quedate en casa');

  //variables
  //una variable es un contenedor de datos que luego puede utilizarse para algun fin
  //por ejemplo;
  var saludo = 'Hola mi nombre es Alvaro';
  //en  este caso nuestra variable es [saludo] y nuestro dato almacenado sera ["Hola mi nombre es Alvaro"]
  //ya tenemos nuestra variable almacenada con datos y podemos utilizarlos
  print(saludo);
  //en este caso con una impresion del dato almacenado en nuestra variable saludo

  //Comentarios
  //a este momento quizas te diste cuenta que escribi mucho texto para describirte todo lo que estamos realizando
  //pero este texto se encuetra con caracteristicas diferentes un opacidad y estilo del texto diferente
  //esto se debe a que estos son comentarios, un comentario nos ayudara a colocar textos que nos puedan servir de
  //referencia para el futuro, utiliza comentarios, para documentar las partes mas importantes de tu proyecto!

  //Existen 3 tipos principales tipos de comentarios
  //El comentario simple, esta denotado con los caracteres "//" seguido del texto a comentar
  //El comentario largo, denotado por "/**/" es un comentario que puede alargarse de forma automatica, usable para textos largos
  //Ejemplo:
  /*
  Soy un comentario largo
  todo lo que este dentro de los separadores sera un comentario 
  */
  //Comentario para documentación, los comentarios para documentación indentados por "///", son utilizados
  //mayormente para la documentación de clases y algunas de sus funciones especiales, lo particular de este tipo
  //de comentario es que es reconocido por flutter y te puede ayudar a entender mejor el código
  //solo utilizalo para documentar archivos muy importantes
  //Ejemplo:
  ///soy un comentario de ejemplo para el curso
  ///[Flutter] me detectara y sere de ayuda para los programadores
}
