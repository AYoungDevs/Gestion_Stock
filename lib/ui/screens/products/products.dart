// ignore_for_file: unused_local_variable, prefer_const_constructors, unused_element, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/acceuil/acceuil.products.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsState();
}

class _ProductsState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Row(
      children: const [
        Expanded(flex: 10, child: AcceuilScreenProducts()),
      ],
    );
  }

  // void _addProductPanier(Products item) {
  //   setState(() {
  //     panierProduit.add(item);
  //   });
  // }
}
