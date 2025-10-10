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
        child: Wrap(
          //example of Stack with Alignment center
          // left to right space
          //up to down space
          spacing: 5,
          runSpacing: 5,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(height: 100, width: 50, color: Colors.red),
            //big box
            Container(height: 80, width: 30, color: Colors.green),
            //2 big box
            Container(height: 50, width: 60, color: Colors.blue),
            Container(height: 100, width: 50, color: Colors.red),
            //big box
            Container(height: 80, width: 30, color: Colors.green),
            //2 big box
            Container(height: 50, width: 60, color: Colors.blue),
            Container(height: 100, width: 50, color: Colors.red),
            //big box
            Container(height: 80, width: 30, color: Colors.green),
            //2 big box
            Container(height: 50, width: 60, color: Colors.blue),
            Container(height: 100, width: 50, color: Colors.red),
            //big box
            Container(height: 80, width: 30, color: Colors.green),
            //2 big box
            Container(height: 50, width: 60, color: Colors.blue),
          ],
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
