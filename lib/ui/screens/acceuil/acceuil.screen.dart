// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';
import 'package:gestion_stock/utils/function.utils.dart';

class AcceuilScreen extends StatefulWidget {
  const AcceuilScreen({super.key});

  @override
  State<AcceuilScreen> createState() => _AcceuilScreenState();
}

class _AcceuilScreenState extends State<AcceuilScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Recherche",
                    labelStyle: TextStyle(color: primaryColor),
                    filled: true,
                    fillColor: secondaryColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              CategorieDashboard(),
              SizedBox(
                height: screenHeight / 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  children: List.generate(20, (index) {
                    return Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: InkWell(
                          onTap: () {
                            ShowSimpleAlert(
                              context,
                              "Mon Titre",
                              "Ceci est le message du popup.",
                              "Fermer",
                            );
                            // confirmAlert(
                            //   context,
                            //   "Confirmation",
                            //   "Êtes-vous sûr de vouloir continuer ?",
                            //   "Confirmer",
                            //   "Annuler",
                            //   () {},
                            // );
                          },
                          child: Container(
                            height: screenHeight / 3.5,
                            width: 150,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    products[0].image,
                                  ),
                                ),
                                Text(
                                  products[0].title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(products[0].price,
                                    style: TextStyle(
                                      color: colorNumber,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: CartWidget(),
        ),
      ],
    );
  }
}
