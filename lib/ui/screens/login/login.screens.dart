// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:gestion_stock/app/routes.dart';
import 'package:gestion_stock/features/constants.features.dart';
import 'package:get/get.dart';

import '../../styles/colors.style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Récupérer la taille de l'écran
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          color: primaryColor,
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: secondaryColor,
              height: screenHeight * 0.6,
            )),
        Positioned(
          top: screenHeight * 0.1,
          width: screenWidth * 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              APP_NAME,
              style: TextStyle(
                fontSize: 64,
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 200, right: 20, bottom: 10),
          child: Center(
            child: Container(
              width: 500,
              height: 450,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(-3, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(150.0),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Login',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Mot de passe',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.dashboard);
                      },
                      child: const Text('Se Connecter'),
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
