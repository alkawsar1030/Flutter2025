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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, //for column
        crossAxisAlignment: CrossAxisAlignment.center, //for row
        //column decorates its elements from top to buttom
        //onthe oher hand row decorates its elements from left to right
        children: <Widget>[
          Divider(height: 2, thickness: 1, color: Colors.black),
          Container(height: 50, width: 50, color: Colors.cyan),
          SizedBox(height: 20),
          Container(height: 50, width: 50, color: Colors.green),
          SizedBox(height: 20),
          Container(height: 50, width: 50, color: Colors.red),
          SizedBox(height: 20),
          Container(height: 50, width: 50, color: Colors.yellow),
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
