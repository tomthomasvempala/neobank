import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("TRED"),),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Balance: Rs. 2234",style: TextStyle(fontSize: 40),),
        
      ],
    ),);
  }
}