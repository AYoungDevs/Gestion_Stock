// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Expanded(
            //   flex: 2,
            //   child: DrawerWidget(),
            // ),
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20, right: 45, bottom: 150),
                      child: Container(
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: profilColor1,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: screenHeight / 7,
                                width: screenWidth / 19,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/personne.jpg"),
                                  ),
                                ),
                              ),
                              Text(
                                "Michel Ahoba",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Container(
                        width: 750,
                        height: 650,
                        color: profilColor12,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
