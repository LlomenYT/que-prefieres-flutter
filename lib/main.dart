import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:que_prefieres_flutter/amplifyconfiguration.dart';
import 'package:que_prefieres_flutter/logic_page.dart';
import 'package:que_prefieres_flutter/que_prefieres.dart';

void main() {
  runApp(MyApp());
}

Future<void> _configureAmplify() async {
  try {
    await Amplify.configure(amplifyconfig);
    safePrint('Successfully configured');
  } on Exception catch (e) {
    safePrint('Error configuring Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final fullHeight = MediaQuery.of(context).size.height;
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return MaterialApp(
      title: '¿Qué prefieres?',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          width: fullWidth,
          height: fullHeight,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://static.guiainfantil.com/pictures/articulos/37796-consejos-para-ayudar-a-los-ninos-indecisos.jpg',
                  ),
                  fit: BoxFit.fitHeight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              LottieBuilder.asset('assets/images/question.json'),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  '¿Que prefieres...?',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 40),
                ),
              ),
              Center(
                child: Text(
                  'Edición novia',
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                  onPressed: () {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                      builder: (context) => const LogicGame(),
                    ));
                  },
                  icon: const Icon(Icons.door_back_door),
                  label: const Text('Empieza el juego')),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
