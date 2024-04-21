import 'package:flutter/material.dart';
import 'package:que_prefieres_flutter/preguntas.dart';
import 'package:que_prefieres_flutter/que_prefieres.dart';
import 'package:que_prefieres_flutter/utils.dart';

class LogicGame extends StatelessWidget {
  const LogicGame({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    return MaterialApp(
      key: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: QuePrefieresPage(
          opcion1: preguntas[0].opcion1,
          opcion2: preguntas[0].opcion2,
          foto1: preguntas[0].foto1,
          foto2: preguntas[0].foto2,
          enAcierto: () {
            Utils.showConfirmationModal(
                context, 'Has escogido ${preguntas[0].opcion1}', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuePrefieresPage(
                          opcion1: preguntas[1].opcion1,
                          opcion2: preguntas[1].opcion2,
                          foto1: preguntas[1].foto1,
                          foto2: preguntas[1].foto2,
                          enAcierto: () {},
                          enFallo: () {})));
            });
          },
          enFallo: () {
            Utils.showConfirmationModal(
                context, 'Has escogido ${preguntas[0].opcion2}', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuePrefieresPage(
                          opcion1: preguntas[2].opcion1,
                          opcion2: preguntas[2].opcion2,
                          foto1: preguntas[2].foto1,
                          foto2: preguntas[2].foto2,
                          enAcierto: () {},
                          enFallo: () {})));
            });
          }),
    );
  }
}
