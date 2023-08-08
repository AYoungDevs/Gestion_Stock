// ignore_for_file: unused_local_variable, prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';

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
                  children: List.generate(products.length, (index) {
                    final item = products[index];
                    return Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: InkWell(
                          onTap: () {
                            _addProductPanier(item);
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
                                    item.image,
                                  ),
                                ),
                                Tooltip(
                                  message: item.title,
                                  child: Text(
                                    item.title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                Text(item.price,
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

  void _addProductPanier(Products item) {
    setState(() {
      panierProduit.add(item);
    });
  }
}
