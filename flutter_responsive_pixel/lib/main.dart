import 'package:flutter/material.dart';
import 'package:flutter_responsive_pixel/handlers/responsive-pixel-handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ResponsivePixelHandler.init();
    return MaterialApp(
      title: 'Flutter Responsive Pixel',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
        width: ResponsivePixelHandler.toResponsivePixel(200),
        padding: EdgeInsets.all(ResponsivePixelHandler.toResponsivePixel(50)),
        margin: EdgeInsets.all(ResponsivePixelHandler.toResponsivePixel(50)),
        child: Center(child: Text("Box")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
