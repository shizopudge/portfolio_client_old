import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Adaptive {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  static PlatformType _getPlatformType() {
    if (kIsWeb) {
      return PlatformType.web;
    } else if (Platform.isAndroid) {
      return PlatformType.android;
    } else {
      return PlatformType.ios;
    }
  }

  static bool get isMobile => screenWidth! < 600;

  static bool get isTablet => screenWidth! >= 600 && screenWidth! <= 900;

  static bool get isDesktop => screenWidth! > 900;

  bool get isANDROID => _getPlatformType().isANDROID;
  bool get isIOS => _getPlatformType().isIOS;
  bool get isWEB => _getPlatformType().isWEB;
}

enum PlatformType {
  android,
  ios,
  web;

  bool get isANDROID => this == PlatformType.android;
  bool get isIOS => this == PlatformType.ios;
  bool get isWEB => this == PlatformType.web;
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    if (Adaptive.isMobile) return mobile;
    if (Adaptive.isTablet) return tablet;
    return desktop;
  }
}
