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

    // int _selectedValue = 1;

    // List<Map<String, dynamic>> _radioValues = [
    //   {"label": "Homme", "value": 1},
    //   {"label": "Femme", "value": 2},
    // ];
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
                      padding: EdgeInsets.only(
                          left: 20, right: 25, bottom: 150, top: 24),
                      child: Container(
                          width: screenWidth / 4,
                          height: screenHeight * 0.7,
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
                                    color: Colors.black, fontSize: 32),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () => {},
                                  child: Text(
                                    "Informations personnelles",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () => {},
                                  child: Text(
                                    "Demande de modification",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () => {},
                                  child: Text(
                                    "Mot de passe oublié",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 38, bottom: 24),
                      child: Container(
                        width: screenWidth * 0.58,
                        height: screenHeight * 1,
                        color: profilColor12,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 29, left: 48),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Homme",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 22),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      // Row(
                                      //   children: _radioValues.map((option) {
                                      //     return RadioListTile(
                                      //       title: Text(option["label"]),
                                      //       value: option["value"],
                                      //       groupValue: _selectedValue,
                                      //       onChanged: (value) {
                                      //         setState(() {
                                      //           _selectedValue = value;
                                      //         });
                                      //       },
                                      //     );
                                      //   }).toList(),
                                      // ),
                                      Radio(
                                        value: Radio,
                                        groupValue: ActionListener,
                                        onChanged: (value) => '1',
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Femme",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 22),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: Radio,
                                        groupValue: ActionListener,
                                        onChanged: (value) => '1',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
