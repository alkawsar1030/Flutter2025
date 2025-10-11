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
      appBar: AppBar(
        title: Text('Custom Gradient AppBar'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        toolbarHeight: 50, // Makes AppBar taller
      ),
      body: Center(
        child: Column(
          children: [
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

            SizedBox(height: 5),
            Tooltip(
              message: 'OutlinedButton ',
              child: OutlinedButton(
                onPressed: () {
                  showSnack(context, 'This is Outlined Button');
                },
                child: Text('Click ME'),
              ),
            ),
            SizedBox(height: 5),
            Tooltip(
              message: 'TextButton',
              child: TextButton(
                onPressed: () {
                  showSnack(context, 'This is Text Button');
                },
                child: Text('Click ME'),
              ),
            ),

            SizedBox(height: 5),
            IconButton(
              tooltip: 'click ToolTrip property',
              onPressed: () {
                showSnack(context, 'This is icon Button');
              },
              icon: Icon(Icons.icecream_outlined),
            ),
            SizedBox(height: 5),
            Tooltip(
              message: 'InkWell',
              child: InkWell(
                onLongPress: () {
                  showSnack(context, 'long Pressed ');
                },
                onDoubleTap: () {
                  showSnack(context, 'Doubble Tap Pressed InkWell');
                },
                onTap: () {
                  showSnack(context, 'single Tap Pressed InkWell');
                },

                child: Icon(Icons.access_alarms),
              ),
            ),

            //liner Gradiant
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  'Linear Gradient',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnack(BuildContext ctx, String msg) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(msg)));
  }
}
