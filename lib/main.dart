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
              colors: [Colors.purple, Colors.blue, Colors.teal],
              begin: Alignment.topLeft,

              end: Alignment.centerRight,
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
            SizedBox(height: 5),
            //liner Gradiant
            Container(
              width: 50,
              height: 50,
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
                  style: TextStyle(color: Colors.white, fontSize: 5),
                ),
              ),
            ),
            SizedBox(height: 5),

            //gradiant on Text
            Text(
              'Gradient Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: <Color>[Colors.green, Colors.black, Colors.red],
                  ).createShader(Rect.fromLTWH(50, 0, 400, 10)),
              ),
            ),
            SizedBox(height: 5),

            TextFormField(
              decoration: InputDecoration(labelText: 'input din'),

              onFieldSubmitted: (value) {
                showSnack(context, value);
              },
            ),
            SizedBox(height: 5),

            DropdownButton(
              hint: Text('Select from Below'),
              items: [
                DropdownMenuItem(
                  enabled: true,
                  value: 'Dhaka',
                  child: Text('Dhaka'),
                ),
                DropdownMenuItem(value: 'Bhola', child: Text('Bhola')),
                DropdownMenuItem(value: 'Rajshahi', child: Text('Rajshahi')),
                DropdownMenuItem(
                  value: 'Chattagram',
                  child: Text('Chattagram'),
                ),
              ],
              onChanged: (value) {
                showSnack(context, value.toString());
              },
            ),
            SizedBox(height: 5),

            Center(
              child: Slider(
                value: 10,

                // ✅ সরাসরি সংখ্যা
                min: 0,
                max: 100,
                divisions: 10,
                label: 'Increase value',
                onChanged: (label) {
                  showSnack(context, label.toString());
                }, // ⚠️ disabled
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
