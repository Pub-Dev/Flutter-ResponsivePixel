import 'package:flutter/material.dart';
import 'package:flutter_responsive_pixel/flutter_responsive_pixel.dart';

import 'example-page.dart';
import 'example-responsive-page.dart';

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