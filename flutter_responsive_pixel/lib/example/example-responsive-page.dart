import 'package:flutter/material.dart';
import 'package:flutter_responsive_pixel/handlers/responsive-pixel-handler.dart';

class ExampleResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsivePixelHandler.toResponsivePixel(480, context),
      padding: EdgeInsets.all(ResponsivePixelHandler.toResponsivePixel(10, context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Text('Example(64)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(64, context)),),
                Text('Example(32)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(32, context)),),
                Text('Example(16)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(16, context)),),
                Text('Example(12)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(12, context)),),
                Text('Example(8)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(8, context)),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: ResponsivePixelHandler.toResponsivePixel(10, context),
              left: ResponsivePixelHandler.toResponsivePixel(20, context),
            ),
            padding: EdgeInsets.all(ResponsivePixelHandler.toResponsivePixel(30, context)),
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Text('Example(64)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(64, context)),),
                Text('Example(32)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(32, context)),),
                Text('Example(16)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(16, context)),),
                Text('Example(12)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(12, context)),),
                Text('Example(8)', style: TextStyle(fontSize: ResponsivePixelHandler.toResponsivePixel(8, context)),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}