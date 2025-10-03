

import 'package:flutter/material.dart';

void main(){
  
  runApp(App());
  
}

class App extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage());

  }
  
}
 class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Title Bar of My first App'))) ,
        body: Center(
          child: RichText(text: TextSpan(
            children: [
              TextSpan(text: "This",style: TextStyle(color: Colors.orange,fontSize:40)),
              TextSpan(text: "is My Body Text",style: TextStyle(color: Colors.blue,fontSize: 20))
            ]
          )),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform when the button is pressed
          print('FAB pressed!');
        },
        heroTag: FloatingActionButtonLocation.centerFloat,
        child: Icon(Icons.add), // The icon displayed on the button
        backgroundColor: Colors.orange, // Custom background color
        tooltip: 'নতুন কিছু এড কর', // Text displayed on long-press//

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Or .centerDocked
    );




  }
  
 }