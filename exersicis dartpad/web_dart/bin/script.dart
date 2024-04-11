import 'dart:html';

void main() {
  print("La función main se está ejecutando.");

  var rosco = Rosco();

  var primeraDefinicion = rosco.obtenerPregunta();

  var preguntaElement = querySelector("#pregunta");

  if (preguntaElement != null) {
    preguntaElement.text = primeraDefinicion.definicion;
  } else {
    print("Element with ID 'pregunta' not found in the HTML.");
  }
}

class Rosco {
  List<Pregunta> roscoPreguntas = [];

  static List letras = const ["A", "B", "C", "D", "E", "F"];

  static List definiciones = const [
    "Persona que tripula una Astronave o que está entrenada para este Trabajo",
    "Especie de Talega o Saco de Tela y otro material que sirve para llevar o guardar algo",
    "Aparato destinado a registrar imágenes animadas para el cine o la telivision",
    "Obra literaria escrita para ser representada",
    "Que se prolonga muchisimo o excesivamente",
    "Laboratorio y despacho del farmaceutico"
  ];

  static List respuestas = [
    "Astronauta",
    "Bolsa",
    "Camara",
    "Drama",
    "Eterno",
    "Farmacia"
  ];

  Rosco() {
    for (var letra in letras) {
      var index = letras.indexOf(letra);

      var roscoPregunta =
          Pregunta(letra, definiciones[index], respuestas[index]);

      roscoPreguntas.add(roscoPregunta);
    }
  }

  Pregunta obtenerPregunta() {
    return roscoPreguntas[0];
  }

  Pregunta pasapalabra() {
    return Pregunta("", "", "");
  }

  String evaluarRespuesta() {
    return "";
  }
}

class Pregunta {
  String letra;

  String definicion;

  String respuesta;

  Pregunta(this.letra, this.definicion, this.respuesta);
}
