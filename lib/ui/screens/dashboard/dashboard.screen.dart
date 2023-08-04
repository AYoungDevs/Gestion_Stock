// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
// import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';
import 'package:gestion_stock/ui/widget/drawer/drawer.widget.dart';
// import 'package:gestion_stock/features/constants.features.dart';

// import '../../styles/colors.style.dart';
// import '../../widget/drawer/drawer.widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
            Expanded(
              flex: 2,
              child: DrawerWidget(),
            ),
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
                              onTap: () {},
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
                                    Text(products[0].title),
                                    Text(products[0].price,
                                        style: TextStyle(color: colorNumber)),
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
              // child:
            ),
            Expanded(
              flex: 3,
              child: CartWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
