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
    //List<InfoProducts> infoproducts = [];

    // void iniState() {
    // infoproducts = InfoProducts.getInfoProducts();
    //super.initState();
    //}

    List<DataCell> Contenu = ([
      DataCell(Text("1")),
      DataCell(Container(
          child: Image.asset('assets/images/coca_cola_33cl.jpg',
              height: 40, width: 80))),
      DataCell(Text('Sucrerie')),
      DataCell(Text('50')),
      DataCell(Text('13/05/2023')),
      DataCell(Row(
        children: [
          InkWell(
              onTap: () {
                print('supprimé');
              },
              child: Icon(
                Icons.delete_sharp,
                color: Colors.red,
              )),
          SizedBox(width: 25),
          InkWell(
              onTap: () {
                print("editer");
              },
              child: Icon(
                Icons.edit,
                color: facebookColor,
              ))
        ],
      )),
    ]);

    List<DataColumn> EnteteTableau = ([
      DataColumn(label: Text('#ID')),
      DataColumn(label: Text('Image')),
      DataColumn(label: Text('Categorie')),
      DataColumn(label: Text('Quantité')),
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Action')),
    ]);

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
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
                          color: pageBackgroundColor,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Produits',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  DataTable(
                    columns: EnteteTableau,
                    rows: [
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu),
                      DataRow(cells: Contenu)
                    ],

                    //infoproducts
                    //.map((Info) => DataRow(cells: [
                    // DataCell(Text(Info.ID)),
                    // DataCell(Text(Info.Image)),
                    // DataCell(Text(Info.Categorie)),
                    //DataCell(Text('Info.Quantite')),
                    //DataCell(Text(Info.Date)),
                    //DataCell(Info.Action as Widget),
                    //]))
                    //.toList(),
                    columnSpacing: 130,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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

class InfoProducts {
  String ID;
  String Image;
  String Categorie;
  int Quantite;
  String Date;
  Icon Action;

  InfoProducts(
      {required this.ID,
      required this.Image,
      required this.Categorie,
      required this.Quantite,
      required this.Date,
      required this.Action});

  static List<InfoProducts> getInfoProducts() {
    return <InfoProducts>[
      InfoProducts(
          ID: '1',
          Image: 'gdgdf',
          Categorie: 'ddd',
          Quantite: 2,
          Date: '',
          Action: Icon(Icons.edit)),
      InfoProducts(
          ID: '1',
          Image: 'dfd',
          Categorie: 'dfdf',
          Quantite: 2,
          Date: 'dfdf',
          Action: Icon(Icons.edit)),
      InfoProducts(
          ID: '1',
          Image: 'dfdf',
          Categorie: 'dddqs',
          Quantite: 2,
          Date: 'drtt',
          Action: Icon(Icons.edit)),
      InfoProducts(
          ID: '1',
          Image: 'ytt',
          Categorie: 'ggg',
          Quantite: 2,
          Date: 'ggggg',
          Action: Icon(Icons.edit)),
    ];
  }
}
