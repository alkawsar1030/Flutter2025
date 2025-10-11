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
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showSnack(context, 'This is Elevated Button');
              },
              child: Text('Click ME'),
            ),

            SizedBox(height: 5),
            OutlinedButton(
              onPressed: () {
                showSnack(context, 'This is Outlined Button');
              },
              child: Text('Click ME'),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                showSnack(context, 'This is Text Button');
              },
              child: Text('Click ME'),
            ),

            SizedBox(height: 5),
            IconButton(
              onPressed: () {
                showSnack(context, 'This is icon Button');
              },
              icon: Icon(Icons.icecream_outlined),
            ),
            SizedBox(height: 5),
            InkWell(
              onDoubleTap: () {
                showSnack(
                  context,
                  'Doubble Tap Pressed , this is an example of InkWell',
                );
              },
              child: Icon(Icons.access_alarms),
            ),
            Tooltip(
              //toolTrip as a class
              message: 'This is a helpful tip!',
              child: ElevatedButton(
                onPressed: () {
                  showSnack(
                    context,
                    'Here is the example of TolTrip applying on ElevatedButton',
                  );
                  // Button action
                },
                child: Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnack(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
