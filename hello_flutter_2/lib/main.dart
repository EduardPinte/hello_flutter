// Biblioteca math din Dart, de unde vine clasa Random.
import 'dart:math';

// Pachetul Material: widget-uri de bază și culori predefinite (Colors).
import 'package:material_ui/material_ui.dart';

// Fișierul nostru cu lista de glume, din același folder lib/.
import 'jokes.dart';

/// Punctul de intrare al aplicației, ca metoda `main` din Java.
void main() {
  // Generatorul de numere aleatoare, ca java.util.Random din Java.
  // final: variabila primește o valoare o singură dată, ca final din Java sau const din JavaScript.
  final randomGen = Random();

  // Un număr la întâmplare între 0 și numărul de glume minus 1, adică un index valid în listă.
  final currentJokeIndex = randomGen.nextInt(builtInJokes.length);

  // Gluma de la acel index; la fiecare pornire a aplicației apare altă glumă.
  final joke = builtInJokes[currentJokeIndex];

  // runApp afișează pe tot ecranul widget-ul primit, rădăcina arborelui de widget-uri.
  runApp(
    // ColoredBox umple tot spațiul primit cu o culoare.
    ColoredBox(
      // Culoarea de fundal vine din glumă, așa că fiecare glumă are culoarea ei.
      color: joke.color,

      // Center așază child-ul în mijlocul spațiului disponibil.
      child: Center(
        // Padding lasă un spațiu gol în jurul child-ului, ca textul să nu atingă marginile.
        child: Padding(
          // 40 de pixeli pe fiecare latură.
          padding: const EdgeInsets.all(40),

          // Text afișează un șir de caractere pe ecran.
          child: Column(
            mainAxisSize: .min,
            spacing: 40.0,
            children: [
              Text(
                // ${...} pune valoarea unei expresii în text, ca în template strings din JavaScript.
                // \n trece pe rândul următor; două \n lasă un rând gol între glumă și explicație.
                joke.text,

                // Fără MaterialApp, trebuie să spunem noi direcția textului: de la stânga la dreapta.
                textDirection: TextDirection.ltr,

                // Fiecare rând al textului este centrat.
                textAlign: TextAlign.center,

                // TextStyle stabilește cum arată textul.
                style: const TextStyle(
                  // Mărimea literelor, în pixeli.
                  fontSize: 60,
                ),
              ),
              Text(
                // ${...} pune valoarea unei expresii în text, ca în template strings din JavaScript.
                // \n trece pe rândul următor; două \n lasă un rând gol între glumă și explicație.
                joke.colorReason,

                // Fără MaterialApp, trebuie să spunem noi direcția textului: de la stânga la dreapta.
                textDirection: TextDirection.ltr,

                // Fiecare rând al textului este centrat.
                textAlign: TextAlign.center,

                // TextStyle stabilește cum arată textul.
                style: const TextStyle(
                  // Mărimea literelor, în pixeli.
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'World Hello',
                textDirection: .ltr,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
