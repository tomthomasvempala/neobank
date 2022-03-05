import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  
  
  // const Home({ Key? key }) : super(key: key);

  @override
  
  
  State<Home> createState(


  ) => _HomeState();
}

class _HomeState extends 

State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
        BottomNavigationBarItem(icon: Icon(Icons.scanner),label: "Scan"),
        BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "Contacts"),
        BottomNavigationBarItem(icon: Icon(Icons.money),label: "Market")
      ],),    );
  }
}

