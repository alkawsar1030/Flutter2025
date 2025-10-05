import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Title Bar of My first App'))),
      body: Stack(
        //example of Stack with Alignment center
        alignment: Alignment.center,
        children: [
          Container(height: 300, width: 300, color: Colors.orange), //big box
          Container(height: 200, width: 200, color: Colors.green), //2 big box
          Container(height: 100, width: 100, color: Colors.blue), //small box
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform when the button is pressed
          print('FAB pressed!');
        },
        heroTag: FloatingActionButtonLocation.centerFloat,
        child: Icon(Icons.add),
        // The icon displayed on the button
        backgroundColor: Colors.orange,
        // Custom background color
        tooltip: 'নতুন কিছু এড কর', // Text displayed on long-press//
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // Or .centerDocked
    );
  }
}
