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
      body: Center(
        child: Image(
          image: NetworkImage(
            "data:image/jpeg;base64,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",
          ),
          height: 500,
          width: 400,
          fit: BoxFit.contain,
        ),
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
