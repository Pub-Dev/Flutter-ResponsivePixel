import 'package:flutter/material.dart';

class ResponsivePixelHandler {
  static double _baseWidth;

  static void init({
    double baseWidth = 1440,
  }) {
    _baseWidth = baseWidth;
  }

  static double toPixel(double pixel, BuildContext context) {
    return (pixel / _baseWidth) * MediaQuery.of(context).size.width;
  }

  static double toFont(double pixel, BuildContext context,
      {double minResponsivePixel, double maxResponsivePixel}) {
    double fontScale = MediaQuery.of(context).textScaleFactor;
    double pixelWithScale = pixel * fontScale;
    if(minResponsivePixel != null && pixelWithScale < minResponsivePixel)
      pixel = minResponsivePixel;
    else if(maxResponsivePixel != null && pixelWithScale > maxResponsivePixel)
      pixel = maxResponsivePixel;
    else if(minResponsivePixel != null && maxResponsivePixel != null)
      pixel = pixelWithScale;
    //fontScale divide pixel because it will fix when multiple the nature scale.
    return toPixel(pixel, context) / fontScale;
  }
}
