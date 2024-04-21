import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Utils {
  static void showConfirmationModal(
    BuildContext context,
    String title,
    Function? onDismiss,
  ) {
    showAdaptiveDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: LottieBuilder.asset(
                  'assets/images/stars.json',
                  height: MediaQuery.of(context).size.height / 1.5,
                )),
            AlertDialog(
              backgroundColor: Colors.white.withOpacity(0.95),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              title: Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(color: Colors.black),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'El ${_randomPercentage()} de la gente escoge está opción!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(color: Colors.black),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ).then((value) {
      // Execute the callback when the dialog is dismissed
      if (onDismiss != null) {
        onDismiss();
      }
    });
  }

  static String _randomPercentage() {
    // Generate a random number between 0 and 100 (inclusive)
    int randomPercentage = Random().nextInt(101);
    return '$randomPercentage%'; // Concatenate with '%' symbol and return as a string
  }
}
