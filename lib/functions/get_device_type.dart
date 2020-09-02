import 'package:flutter/material.dart';
import 'package:symphonia_mobile_app/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;
// لقلب العرض إلى طول في حال كان الجهاز بحالة المقلوب بشكل افقي
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
// نوع الجهاز الذي يستخدم التطبيق هو ديسكتوب
  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
// نوع الجهاز الذي يستخدم التطبيق هو تابليت
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }
// نوع الجهاز الذي يستخدم التطبيق هو موبايل
  return DeviceScreenType.Mobile;
}
