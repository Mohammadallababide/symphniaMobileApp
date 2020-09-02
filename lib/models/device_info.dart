import 'package:flutter/material.dart';
import 'package:symphonia_mobile_app/enums/device_screen_type.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localHeight;
  final double localWidth;

  DeviceInfo({
    this.orientation,
    this.deviceType,
    this.screenWidth,
    this.screenHeight,
    this.localHeight,
    this.localWidth,
  });
}
