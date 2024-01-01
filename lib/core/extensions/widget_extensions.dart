import 'dart:ui';

import 'package:flutter/material.dart';

extension WidgetCenterX on Widget {
  Widget toCenter() => Center(child: this);
}

extension WidgetMarginX on Widget {
  Widget marginAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );

  Widget marginSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  Widget marginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Container(
        margin: EdgeInsets.only(
          top: top,
          left: left,
          right: right,
          bottom: bottom,
        ),
        child: this,
      );
}

extension WidgetPaddingX on Widget {
  Widget paddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget paddingSymmetric({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: top,
          left: left,
          right: right,
          bottom: bottom,
        ),
        child: this,
      );
}

extension AlignmentX on Widget {
  Widget align({required Alignment alignment}) => Align(
        alignment: alignment,
        child: this,
      );
}

extension BlurX on Widget {
  Widget toBlur({required double blur}) => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur,
            sigmaY: blur,
          ),
          child: this,
        ),
      );
}

extension ExpandedX on Widget {
  Widget expanded({
    Key? key,
    int flex = 1,
  }) {
    return Expanded(
      key: key,
      flex: flex,
      child: this,
    );
  }
}
