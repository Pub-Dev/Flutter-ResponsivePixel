import 'dart:ui';

class ResponsivePixelHandler{
  static double _basePixel;
  static double responsivePixel;

  static void init({
    double basePixel = 8,
    double baseWidth = 1125,
    double minResponsivePixel = 6,
    double maxResponsivePixel = 12,
    double minWidth = 700,
    double maxWidth = 1440
  }){
    _basePixel = basePixel;

    double widthMobile = window.physicalSize.width;
    widthMobile = widthMobile < minWidth ? minWidth : widthMobile;
    widthMobile = widthMobile > maxWidth ? maxWidth : widthMobile;

    responsivePixel = widthMobile * basePixel / baseWidth;

    responsivePixel = responsivePixel < minResponsivePixel ? minResponsivePixel : responsivePixel;
    responsivePixel = responsivePixel > maxResponsivePixel ? maxResponsivePixel : responsivePixel;
  }

  static double toResponsivePixel(double pixel, {double minResponsivePixel, double maxResponsivePixel}){
    double proportionPixel = pixel / _basePixel;

    double valuePixel = responsivePixel * proportionPixel;
    if(minResponsivePixel != null)
      valuePixel = valuePixel < minResponsivePixel ? minResponsivePixel : valuePixel;
    if(maxResponsivePixel != null)
      valuePixel = valuePixel > maxResponsivePixel ? maxResponsivePixel : valuePixel;

    return valuePixel;
  }
}