// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
// import 'package:gestion_stock/features/constants.features.dart';

import '../../styles/colors.style.dart';
import '../../widget/drawer/drawer.widget.dart';

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
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        backgroundColor: pageBackgroundColor,
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: pageBackgroundColor,
        ),
      ),
    );
  }
}
