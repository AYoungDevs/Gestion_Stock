// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:gestion_stock/features/constants.features.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/drawer/drawernavigation.widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;
    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;

    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: screenHeight,
        color: primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 50,
            ),
            Container(
              child: Text(
                APP_NAME,
                style: TextStyle(fontSize: 24, color: secondaryColor),
              ),
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            DrawerNavigationMenu(
              title: 'Acceuil',
            ),
            SizedBox(
              height: screenHeight / 42,
            ),
            DrawerNavigationMenu(
              title: 'Ventes',
            ),
            SizedBox(
              height: screenHeight / 42,
            ),
            DrawerNavigationMenu(
              title: 'Rapport',
            ),
            SizedBox(
              height: screenHeight * 0.45,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight / 8,
                  width: screenWidth / 19,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/personne.jpg"),
                    ),
                  ),
                ),
                Text(
                  "Michel Ahoba",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
