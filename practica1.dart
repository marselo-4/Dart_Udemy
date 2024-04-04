import 'dart:html';

void main() {
  print("La función main se está ejecutando.");

  var rosco = Rosco();

  var primeraDefinicion = rosco.obtenerPregunta();

  querySelector("#pregunta")?.text = primeraDefinicion.definicion;
  querySelector("#letra")?.text = primeraDefinicion.letra;

  querySelector("#btnEnviar")?.onClick.listen((event) {
    var respuesta = (querySelector("#textRespuesta") as InputElement).value;
    var letra = querySelector("#letra")?.text;

    String mensaje = rosco.evaluarRespuesta(letra, respuesta);
    print(mensaje);
    print(letra);
    print(respuesta);
  });
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

  String evaluarRespuesta(String letra, String respuesta) {
    var esCorrecta = roscoPreguntas
        .any((rosco) => rosco.letra == letra && rosco.respuesta == respuesta);

    if (esCorrecta) {
      return "Letra $letra correcta";
    }

    return "";
  }
}

class Pregunta {
  String letra;

  String definicion;

  String respuesta;

  Pregunta(this.letra, this.definicion, this.respuesta);
}
