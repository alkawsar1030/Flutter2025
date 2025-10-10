import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Title Bar of My first App'))),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 300,
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 10, top: 10),
          child: Text(
            'Padding TExt',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ),
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
