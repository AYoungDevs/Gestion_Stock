// ignore_for_file: unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../styles/colors.style.dart';
import 'package:gestion_stock/features/constants.features.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Récupérer la taille de l'écran
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight,
                width: screenWidth,
                color: primaryColor,
              ),
              Positioned(
                top: screenHeight * 0.4,
                width: screenWidth * 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    APP_NAME,
                    style: TextStyle(
                      color: backgroundColor,
                      fontSize: 64,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.2,
                width: screenWidth * 1,

                // left: screenWidth / 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Chargement...',
                    style: TextStyle(
                      color: backgroundColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
