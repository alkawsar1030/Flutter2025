

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


    );
  }
  
 }