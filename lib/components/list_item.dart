import 'package:countriesbel/pages/home_page.dart';
import 'package:flutter/material.dart';


class ListItem extends StatelessWidget {
  const ListItem({super.key , required this.countryName, required this.countryFlag, required this.countryPopulation, required this.countrySquare});

  final String countryName;
  final String countryFlag;
  final String countrySquare;
  final String countryPopulation;


  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(8),
       color: Colors.teal[200], 
       child: Column(
        children: [
          Expanded(flex :2, child: Image.network(countryFlag)),
          Expanded(flex:2, child: Container(
              margin: const EdgeInsets.only(top: 12),
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Название:  ' + '$countryName' + '\n'),
                  TextSpan(text: 'Население: ' + '$countryPopulation'+ '\n'),
                  TextSpan(text: 'Площадь: ' + '$countrySquare' + '\n'),
                ]
              )),
            )),
          Expanded(flex: 1,child: Container(
            child:  ElevatedButton(
              child: const Text('Узнать больше...'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const  MySecondPage()
                ));
},
          )),
       )],
       ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key,  required this.countryName2, required this.countryFlag2, required this.countryDiscription });


  final String countryName2;
  final String countryFlag2;
  final String countryDiscription;

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(8),
       color: Colors.teal[200], 
       child: Column(
        children: [
          Expanded(flex :2, child: Container(
            child: Image.network(countryFlag2),
          )),
          Expanded(flex:3, child: Container(
              margin: const EdgeInsets.only(top: 12),
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Название:  ' + '$countryName2' + '\n'),
                  TextSpan(text: '$countryDiscription'+ '\n'),
                ]
              )),
            ))]));
  }
} 