import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Title Bar of My first App'))),
      body: Row(
        //example of Stack with Alignment center
        // left to right space
        //up to down space
        spacing: 5,

        children: [
          Flexible(flex: 1, child: Container(height: 100, color: Colors.red)),
          //big box
          Flexible(flex: 2, child: Container(height: 80, color: Colors.green)),
          //2 big box
          Flexible(flex: 2, child: Container(height: 50, color: Colors.blue)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform when the button is pressed
        },
        heroTag: FloatingActionButtonLocation.centerFloat,
        // The icon displayed on the button
        backgroundColor: Colors.orange,
        // Custom background color
        tooltip: 'নতুন কিছু এড কর',
        child: Icon(Icons.add), // Text displayed on long-press//
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // Or .centerDocked
    );
  }
}
