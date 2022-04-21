import 'dart:convert';

import 'package:flutter/material.dart';

extension MarginExtension on num {
  EdgeInsets get top => EdgeInsets.only(top: this as double);

  EdgeInsets get left => EdgeInsets.only(left: this as double);

  EdgeInsets get right => EdgeInsets.only(right: this as double);

  EdgeInsets get bottom => EdgeInsets.only(bottom: this as double);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: this as double);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: this as double);
}

extension MediaQueryPercentage on num {
  double heightPercentage(BuildContext context) {
    return MediaQuery.of(context).size.height * (this);
  }

  double widthPercentage(BuildContext context) {
    return MediaQuery.of(context).size.width * (this);
  }
}

extension dynamicEndpoints on String {
  String withIds(dynamic ids) {
    String url = this;
    try {
      if (ids is String) {
        url = url.replaceAll("{}", ids);
      } else if (ids is List<String>) {
        for (int i = 0; i < ids.length; i++) {
          url = url.replaceFirst("{}", ids[i]);
        }
      }
      return url;
    } catch (e) {
      print(e);
      return "";
    }
  }
}

extension percentage on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}
