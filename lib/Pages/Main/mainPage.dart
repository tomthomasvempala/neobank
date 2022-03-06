import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neobank/Pages/Contacts/contacts.dart';
import 'package:neobank/Pages/Home/hompage.dart';
import 'package:neobank/Pages/Market/market.dart';
import 'package:neobank/Pages/Scan/scan.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

var screens =[
  HomePage(),
  Scan(),
  Contacts(),
  Market()
];

class _HomeState extends State<Home> {
  int tabNumber=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabNumber],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: tabNumber,
        onTap: (value) {
          setState(() {
            tabNumber=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Scan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: "Market")
        ],
      ),
    );
  }
}
