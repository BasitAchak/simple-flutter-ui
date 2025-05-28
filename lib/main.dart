import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI',
      home: SimpleUI(),
    );
  }
}

class SimpleUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Simple UI'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show a SnackBar when the button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
