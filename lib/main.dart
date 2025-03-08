import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
}
@override
Widget build(BuildContext context){
  return MaterialApp(
debugShowCheckedModeBanner: false,
    title: 'Flutter Bidding application',
    theme:ThemeData(
      primarySwatch: Colors.green,
    ),
    home:const MaximumBid extends StatefulWidget(),
  );
}

class MaximumBid extends StatefulWidget {
  const MaximumBid ({super.key});
  @override
  _MaximumBidState createState() => _MaximumBidstate();

}

class _MaximumBidState extends State <MaximumBid> {
  int _bidAmount=100;
  void _increaseBid(){
    setState(() {
      _bidAmount +=50;
      debugPrint("Bid increased to:\$_bidamount");
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text("Bidding page"),
      centerTitle: true,
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("current maxBid is:\\$_bidAmount",
      style: const TextStyle(fontSize: 45,fontWeight: fontWeight.bold),
      ),
      const SizedBox(height: 20),
    ],
  ),
),
    );
  }
}
