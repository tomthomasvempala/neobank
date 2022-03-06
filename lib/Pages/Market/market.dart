import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  // const Market({ Key? key }) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ), itemBuilder: (context, index){
        return Container(); 
      }),
    );
  }
}