import 'package:flutter/material.dart';
import 'package:example/responsive_pixel.dart';

class ExampleResponsivePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //you need to initialize the Responsive Pixel 
    ResponsivePixelHandler.init(
      baseWidth: 480,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: ResponsivePixelHandler.toPixel(480, context),
          padding: EdgeInsets.all(ResponsivePixelHandler.toPixel(10, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: ResponsivePixelHandler.toPixel(480, context),
                margin: EdgeInsets.only(
                  top: ResponsivePixelHandler.toPixel(30, context),
                ),
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Text('Responsive with limit min and max', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(20, context, minResponsivePixel: 15, maxResponsivePixel: 25), color: Colors.white ), textAlign: TextAlign.center,),
                    Text('Example(64)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(64, context, minResponsivePixel: 30, maxResponsivePixel: 64),)),
                    Text('Example(32)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(32, context, minResponsivePixel: 25, maxResponsivePixel: 50),)),
                    Text('Example(24)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(24, context, minResponsivePixel: 20, maxResponsivePixel: 35),)),
                    Text('Example(16)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(16, context, minResponsivePixel: 15, maxResponsivePixel: 20),)),
                    Text('Example(8)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(8, context, minResponsivePixel: 8, maxResponsivePixel: 15)),)
                  ],
                ),
              ),
              Container(
                width: ResponsivePixelHandler.toPixel(480, context),
                margin: EdgeInsets.only(
                  top: ResponsivePixelHandler.toPixel(30, context),
                ),
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text('Responsive fixed', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(20, context), color: Colors.white)),
                    Text('Example(64)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(64, context),)),
                    Text('Example(32)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(32, context),)),
                    Text('Example(24)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(24, context),)),
                    Text('Example(16)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(16, context),)),
                    Text('Example(8)', style: TextStyle(fontSize: ResponsivePixelHandler.toFont(8, context)),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}