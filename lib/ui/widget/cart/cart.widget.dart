// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                  'Vente récente',
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
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
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
                                    products[0].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: screenHeight / 45,
                                  ),
                                  Container(
                                    // color: secondaryColor,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Coca-Cola",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        // color: secondaryColor,
                                        color: primaryColor,
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
                                      "Sucrerie",
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
                                      "1500 FCFA",
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
                                  onPressed: () {},
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
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
