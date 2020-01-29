import 'package:flutter/material.dart';
import 'package:flutter_responsive_pixel/example/example-page.dart';
import 'package:flutter_responsive_pixel/handlers/responsive-pixel-handler.dart';

import 'example/example-responsive-page.dart';
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
      home: Scaffold(
        appBar: AppBar(title: Text('Responsive Pixel'),),
        body: ExampleResponsivePage(), //the page with responsive pixel
        //body: ExampleWithoutResponsivePage(), //if you want to see the page without responsive
      )
    );
  }
}