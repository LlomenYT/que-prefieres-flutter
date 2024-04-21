import 'package:flutter/material.dart';

class Pregunta {
  final String opcion1;
  final String opcion2;
  final String foto1;
  final String foto2;
  final String rutaAcierto;
  final String rutaFallo;

  Pregunta(
      {required this.opcion1,
      required this.opcion2,
      required this.foto1,
      required this.foto2,
      required this.rutaAcierto,
      required this.rutaFallo});
}

List<Pregunta> preguntas = [
  //PREGUNTA 1
  Pregunta(
      opcion1: 'Envejecer más',
      opcion2: 'Nunca envejecer',
      foto1:
          'https://estaticos-cdn.prensaiberica.es/clip/0cc40a91-0f3b-4d17-bedd-8ca24d21fc18_alta-libre-aspect-ratio_default_0.jpg ',
      foto2:
          'https://fotografias.larazon.es/clipping/cmsimages01/2019/10/24/68DF1852-8E38-4254-BD56-B193138E1D87/98.jpg?crop=2000,1125,x0,y27&width=1900&height=1069&optimize=low&format=webply',
      rutaAcierto: 's',
      rutaFallo: 'n'),
  //PREGUNTA 1 ACIERTO
  Pregunta(
      opcion1: 'Ir a vera',
      opcion2: 'Ir a la montaña',
      foto1:
          'https://media.istockphoto.com/id/1360554439/es/foto/isla-tropical-de-maldivas.jpg?s=612x612&w=0&k=20&c=lguT6mnYPYoYEGi-7NcPQZTszxpPDmb_rnipR7i1MJM=',
      foto2:
          'https://media.istockphoto.com/id/478627080/es/foto/vista-nocturna-de-ama-dablam.jpg?s=612x612&w=0&k=20&c=gvUwQYEM545AbxznQc-kjcQnslKlJ5uy9ZEOgIKFkns=',
      rutaAcierto: 's',
      rutaFallo: 'n'),
  //PREGUNTA 1 FALLO
  Pregunta(
      opcion1: 'Ir siempre arreglada',
      opcion2: 'Ir siempre informal',
      foto1:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzs-8J_6bzIHcSI3EQnuVYj1XPWCn4ZfcPYQ&usqp=CAU',
      foto2: 'https://i.ebayimg.com/images/g/FroAAOSwrU1bE~1C/s-l1200.jpg',
      rutaAcierto: 's',
      rutaFallo: 'n'),
];
