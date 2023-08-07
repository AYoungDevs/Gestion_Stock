// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Container(
      width: screenWidth * 0.58,
      height: screenHeight * 1,
      color: profilColor12,
      child: Column(
        children: [
          // for first line of personnal information profil

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 29, left: 48),
                child: Row(
                  children: [
                    Text(
                      "Homme",
                      style: TextStyle(color: darkColor, fontSize: 22),
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
                    const SizedBox(
                      width: 10,
                    ),

                    Text(
                      "Femme",
                      style: TextStyle(color: darkColor, fontSize: 22),
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

          // for second line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 48),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nom",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Ahoba',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prénoms",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Michel',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // for third line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 48),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 650,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'AhobaMichel02@gmail.com',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          // for four line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 48),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adresse",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 650,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Rue Paul Lanjuvlin 254',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 48),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Numéro de Téléphone",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: '+225 01 51 78 17 16',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profil",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Caissier',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
