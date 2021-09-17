import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String descripition;
  final List<Color> colors;
  final String notice;

  Character({this.name, this.imagePath, this.descripition, this.colors, this.notice});
}

List characters = [
  Character(
    name: "Windshear",
    imagePath: "assets/images/windshearav.jpg",
    descripition: "Windshear, também denominado wind shear, cortante do vento, gradiente de vento, tesoura de vento ou cisalhamento do "
        "vento, é um fenômeno meteorológico que pode ser definido como uma rápida variação de corrente no vento, ou seja, uma "
        "rápida variação na direção e/ou na velocidade do vento ao longo de uma dada distância.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices1"
  ),
  Character(
    name: "Baixa \nvisibilidade",
    imagePath: "assets/images/baixavisi.png",
    descripition: "Visibilidade é o parâmetro utilizado em meteorologia para indicar a medida da distância a que um objeto ou luz pode ser claramente "
        "percebido através do ar. O seu valor é em geral reportado nas observações meteorológicas de superfície e boletins METAR como "
        "a distância em metros (ou milhas) a que um objeto pode ser avistado.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices2"
  ),
  Character(
    name: "Trovoada",
    imagePath: "assets/images/descargaele.png",
    descripition: "",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices3"
  ),
  Character(
    name: "Turbulencia",
    imagePath: "assets/images/descargaele.png",
    descripition: "",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices4"
  ),
  Character(
    name: "Formação \n de gelo",
    imagePath: "assets/images/formaçaogelo.png",
    descripition: "A formação de gelo afeta uma aeronave tanto interna quanto externamente. A acumulação de gelo ocorre nas superfícies "
        "expostas do avião, aumentando o seu peso e a sua resistência ao avanço.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices5"
  ),
  Character(
    name: "Relampagos",
    imagePath: "assets/images/relampagos.png",
    descripition: "Um relâmpago é a situação meteorológica caracterizada pela presença de raios(luminosidade) e seu efeito acústico na "
        "atmosfera terrestre conhecida por trovão. Para um relâmpago se formar é necessário que exista elevação de ar úmido numa "
        "atmosfera instável.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices6"
  ),
  Character(
    name: "Chuva \nForte",
    imagePath: "assets/images/chuva.png",
    descripition: "Chuva é um fenômeno meteorológico que resulta da precipitação das gotas líquidas ou sólidas da água das nuvens sobre a "
        "superfície da Terra. Nem toda chuva atinge a superfície: algumas evaporam-se enquanto ainda estão a cair, num fenômeno "
        "que recebe o nome de virga e que acontece principalmente em locais ou períodos de ar seco.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices7"
  ),
  Character(
    name: "Tempestade \nde areia",
    imagePath: "assets/images/tempestadeareia.png",
    descripition: "Uma tempestade de areia ou tempestade de poeira é um dos fenômenos denominados litometeoros e ocorre quando a umidade "
        "relativa do ar é mais baixa que 80% permitindo a suspensão de partículas em sua maioria sólidas mas não aquosas pelo ar. "
        "O resultado pode ser a Névoa seca, Tempestade de areia (ou poeira), Turbilhão de areia (ou poeira).",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices8"
  ),
  Character(
    name: "Nuvem de cinzas",
    imagePath: "assets/images/nevoaseca.png",
    descripition: "",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400],
    notice: "notices9"
  ),
];