import 'package:flutter/cupertino.dart';

class ResponsivePixelHandler{
  static double _baseWidth;

  static void init({
    double baseWidth = 1440,
  }){
    _baseWidth = baseWidth;
  }

  static double toResponsivePixel(double pixel, BuildContext context, {double minResponsivePixel, double maxResponsivePixel}){
    double valuePixel = (pixel / _baseWidth) * MediaQuery.of(context).size.width;
    if(minResponsivePixel != null)
      valuePixel = valuePixel < minResponsivePixel ? minResponsivePixel : valuePixel;
    if(maxResponsivePixel != null)
      valuePixel = valuePixel > maxResponsivePixel ? maxResponsivePixel : valuePixel;

    return valuePixel;
  }
}