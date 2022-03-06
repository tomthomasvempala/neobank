import 'package:flutter/material.dart';
import 'package:neobank/Pages/Login/login.dart';
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
      appBar: AppBar(title: GestureDetector(
        onDoubleTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return LoginPage();
          }));
        },
        child: Text("Market")),),
          body: Container(
            height: MediaQuery.of(context).size.height,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          
                ), 
                itemCount: marketItem.length,
                itemBuilder: (context, index){
          return Container(width: 20,child: Column(children: [SizedBox(
            height:200,child: Image(image: NetworkImage(marketItem[index]["img"]))),
          Text(marketItem[index]["name"]),Text( "${marketItem[index]['price']}"  +" tokens")]),); 
                }),
              ),
    );
  }
}