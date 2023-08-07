import 'package:flutter/material.dart';

import '../../styles/colors.style.dart';
import '../../widget/acceuil/acceuil.sales.dart';
import '../../widget/drawer/drawer.widget.dart';
import '../acceuil/acceuil.screen.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SalesState();
  }
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
          flex: 2,
          child: DrawerWidget(),
        ),
        Expanded(
          flex: 13,
          child: AcceuilScreenSales(),
        )
      ],
    )));
  }
}
