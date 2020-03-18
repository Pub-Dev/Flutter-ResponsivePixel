import 'package:example/ResponsivePage/example_without_responsive_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_pixel/flutter_responsive_pixel.dart';
import 'ResponsivePage/example_responsive_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Pixel',
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Responsive Pixel'),),
        body: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.redAccent,
              child: Text('Normal page'),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ExampleWithoutResponsivePage())
                );
              },
            ),
            FlatButton(
              color: Colors.greenAccent,
              child: Text('Page with Reponsive Pixel'),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ExampleResponsivePage())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}