// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: screenHeight,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 16,
                ),
                child: Text(
                  'Votre commande',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  '#052023',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // SizedBox(
            //   height: screenHeight / 80,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: panierProduit.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = panierProduit[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: screenHeight / 6,
                          // color: primaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: screenHeight / 8,
                                // width: 150,
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: colorNumber,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    item.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: screenHeight / 45,
                                  ),
                                  Container(
                                    // height: screenHeight / 45,
                                    // color: primaryColor,
                                    width: screenWidth / 20,
                                    alignment: Alignment.topLeft,
                                    child: Tooltip(
                                      message: item.title,
                                      child: Text(
                                        item.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          // color: secondaryColor,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // color: secondaryColor,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      item.price,
                                      style: TextStyle(
                                        // color: secondaryColor,
                                        color: darkColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    // color: secondaryColor,
                                    // alignment: Alignment.topRight,
                                    child: Text(
                                      item.price,
                                      style: TextStyle(
                                        // color: secondaryColor,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                // color: secondaryColor,
                                alignment: Alignment.topRight,
                                // ),
                                child: IconButton(
                                  onPressed: () {
                                    _removeProductPanier(item);
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: redColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: primaryColor,
                          // alignment: Alignment.bottomRight,
                          // width: screenWidth / 20,
                          // height: screenHeight / 20,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_box_sharp,
                                      color: darkColor,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_box_sharp,
                                      color: darkColor,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              height: screenHeight / 5,
              color: secondaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre"),
                        Text("5"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total"),
                        Text(
                          "2500 FCFA",
                          style: TextStyle(
                              color: colorNumber, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => primaryColor),
                    ),
                    child: Text('Imprimer'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _removeProductPanier(Products item) {
    setState(() {
      panierProduit.remove(item);
    });
  }
}
