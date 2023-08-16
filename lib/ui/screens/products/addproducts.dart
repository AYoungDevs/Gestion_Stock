import 'package:flutter/material.dart';

class AddProducts extends StatefulWidget {
  @override
  State<AddProducts> createState() {
    return _AddProductsState();
  }
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      content: Column(
        children: [
          Container(
            width: screenSize.width / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Nouveau Produit',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 25,
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
