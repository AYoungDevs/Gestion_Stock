// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/models/ventes/ventes.models.dart';
import 'package:gestion_stock/ui/screens/products/addproducts.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';
import 'package:intl/intl.dart';

class AcceuilScreenProducts extends StatefulWidget {
  const AcceuilScreenProducts({super.key});

  @override
  State<AcceuilScreenProducts> createState() => AcceuilScreenProductsState();
}

class AcceuilScreenProductsState extends State<AcceuilScreenProducts> {
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
              Column(
                children: [
                  Container(
                      width: screenHeight * 1.5,
                      height: 80,
                      color: textSecondaryColor,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Produits',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 780),
                          InkWell(
                            onTap: () {
                              print('nouveau');
                              __ShowPopup(context);
                            },
                            child: Container(
                              color: primaryColor,
                              height: 27,
                              width: 110,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Nouveau',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void __ShowPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AddProducts();
        });
  }
}
