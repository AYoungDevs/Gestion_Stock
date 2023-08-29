import 'dart:io';

import 'package:flutter/material.dart';

import '../../styles/colors.style.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:file_picker/file_picker.dart';

class AddProducts extends StatefulWidget {
  @override
  State<AddProducts> createState() {
    return _AddProductsState();
  }
}

class _AddProductsState extends State<AddProducts> {
  List<String> Categorie = [
    "sucrerie",
    "vins",
    "sucrerie",
    "vins",
    "sucrerie",
    "vins",
    "sucrerie",
    "vins",
    "sucrerie",
    "vins",
    "sucrerie",
    "vins",
  ];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: pageBackgroundColor,
      content: Column(
        children: [
          Container(
            width: screenSize.width / 2,
            decoration: BoxDecoration(
                color: pageBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Nouveau Produit',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop(context);
                    },
                    child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 25,
                        ))),
              ],
            ),
          ),
          SizedBox(height: 40),
          Form(
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: screenSize.width / 5,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nom produit",
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
                  ],
                ),
                Spacer(),
                Container(
                  width: screenSize.width / 5,
                  child: DropdownSearch<String>(
                    items: Categorie,
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: "choisir la categorie",
                      ),
                    ),
                    onChanged: print,
                    selectedItem: "",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Container(
                width: screenSize.width / 5,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Prix d'achat",
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
              Spacer(),
              Container(
                width: screenSize.width / 5,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Prix de revente",
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
            ],
          ),
          SizedBox(height: 60),
          TextField(
            decoration: InputDecoration(
              labelText: "Quantité",
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
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Image"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  print('photo');
                  _selectedfilesImage();
                },
                child: const Icon(
                  Icons.photo,
                  size: 80,
                ),
              )
            ],
          ),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {},
            child: Text("Enregister"),
          ),
        ],
      ),
    );
  }

  _selectedfilesImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result?.files.single.path as String);
      setState(() {});
    } else {}
  }
}
