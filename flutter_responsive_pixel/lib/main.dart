import 'package:flutter/material.dart';
import 'package:flutter_responsive_pixel/handlers/responsive-pixel-handler.dart';

import 'handlers/responsive-pixel-handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsivePixelHandler.init(
      baseWidth: 480,
    );
    return MaterialApp(
      title: 'Flutter Responsive Pixel',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.amber,
            width: ResponsivePixelHandler.toResponsivePixel(240, context),
            child: Text("Box", 
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(16, context)),),
          ),
          Container(
            color: Colors.blueGrey,
            width: ResponsivePixelHandler.toResponsivePixel(240, context),
            margin: EdgeInsets.only(left: ResponsivePixelHandler.toResponsivePixel(240, context)),
            child: Text("Box", 
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(36, context)),),
          ),
        ],
      ),
    );
  }
}
