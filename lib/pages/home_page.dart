import 'package:countriesbel/models/countries.dart';
import 'package:flutter/material.dart';
import 'package:countriesbel/components/list_item.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
        primary: false,
        padding: const EdgeInsets.all(20),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return  ListItem(
            countryFlag: CountryList[index].PhotoFlag,
            countryName: CountryList[index].Name,
            countrySquare: CountryList[index].Square,
            countryPopulation: CountryList[index].Population,
          );
        }
        
    ),
    );


}
}
 
 

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

   @override
  Widget build(BuildContext context) {
      return(Center(    
            child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index){
              return   SecondScreen(
            countryFlag2: countryList2[index].PhotoFlag2,
            countryName2: countryList2[index].Name2,
            countryDiscription: countryList2[index].Discription,
          );
            },
          ),
    ));
}}
