import 'package:flutter/material.dart';
import 'package:neobank/Pages/Market/item.dart';

class Market extends StatefulWidget {
  // const Market({ Key? key }) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Market"),),
          body: Container(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          
        ), 
        itemCount: marketItem.length,
        itemBuilder: (context, index){
          return Container(height: 20,width: 20,color: Colors.red,); 
        }),
      ),
    );
  }
}