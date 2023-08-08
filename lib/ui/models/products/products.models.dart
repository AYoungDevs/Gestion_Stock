// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';

class Products {
  String image, title, price;
  int id;

  // static var length;

  Products({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
  });

  // static List<Products> items() {
  //   return List.generate(
  //     20,
  //     (index) => Products(
  //       title: "COCA-COLA",
  //       image: "assets/images/coca_cola_33cl.jpg",
  //       price: "1000FCFA",
  //     //     ),
  //     growable: true,
  //   );
  // }
}

List<Products> products = [
  Products(
    id: 1,
    title: "Coca-cola",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 2,
    title: "Darci Orange",
    image: "assets/images/Darci brique orange.jpeg",
    price: "2000FCFA",
  ),
  Products(
    id: 3,
    title: "Heineken",
    image: "assets/images/Heineken.jpeg",
    price: "3000FCFA",
  ),
  Products(
    id: 4,
    title: "Imperial blue",
    image: "assets/images/Imperial Blue.jpeg",
    price: "4000FCFA",
  ),
  Products(
    id: 5,
    title: "Presséa fresh Tropical",
    image: "assets/images/Pressea Fresh Tropical.jpeg",
    price: "5000FCFA",
  ),
  Products(
    id: 6,
    title: "Preséa pomme",
    image: "assets/images/Pressea Pomme.jpeg",
    price: "6000FCFA",
  ),
  Products(
    id: 7,
    title: "Ricard",
    image: "assets/images/Ricard.jpeg",
    price: "7000FCFA",
  ),
  Products(
    id: 8,
    title: "Vechia romaya",
    image: "assets/images/Vechia romaya.jpeg",
    price: "8000FCFA",
  ),
  Products(
    id: 9,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 10,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 11,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 12,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 13,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 14,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
  Products(
    id: 15,
    title: "COCA-COLA",
    image: "assets/images/coca_cola_33cl.jpg",
    price: "1000FCFA",
  ),
];

List<Products> panierProduit = [];
