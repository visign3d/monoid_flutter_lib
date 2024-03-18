
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'a_controller_getx.dart';

abstract class AWidget<T extends AController> extends GetView<T> {
  const AWidget(this.controller, {super.key});

  @override
  final T controller;

  @override
  String? get tag;

  ///Start with this widget , it will be used as default.
  ///
  /// or link to existing device ,example : [ defaultWidget()=>mobile() ]
  Widget? defaultBuilder(BuildContext context) => null;

  Widget? mobile(BuildContext context) => null;

  Widget? tablet(BuildContext context) => null;

  Widget? laptop(BuildContext context) => null;

  Widget? desktop(BuildContext context) => null;

  Widget? largeScreen(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        if (breakPointValueMap[BreakPoint.mobile]!.call(width)) {
          return mobile(context) ?? defaultBuilder(context) ?? alertWidget;
        }
        if (breakPointValueMap[BreakPoint.tablet]!.call(width)) {
          return tablet(context) ?? defaultBuilder(context) ?? alertWidget;
        }
        if (breakPointValueMap[BreakPoint.laptop]!.call(width)) {
          return laptop(context) ?? defaultBuilder(context) ?? alertWidget;
        }
        if (breakPointValueMap[BreakPoint.desktop]!.call(width)) {
          return desktop(context) ?? defaultBuilder(context) ?? alertWidget;
        }
        if (breakPointValueMap[BreakPoint.largeScreen]!.call(width)) {
          return largeScreen(context) ?? defaultBuilder(context) ?? alertWidget;
        }
        return defaultBuilder(context)?? alertWidget;
      },
    );
  }

  Widget get alertWidget => Container(
        color: Colors.grey,
        child: const Center(child: Text('not implemented')),
      );
}

///returns true if width matches interval
Map<BreakPoint, bool Function(double)> breakPointValueMap = {
  BreakPoint.mobile: (d) {
    return 320 < d && d < 480;
  },
  BreakPoint.tablet: (d) {
    return 481 < d && d < 768;
  },
  BreakPoint.laptop: (d) {
    return 769 < d && d < 1024;
  },
  BreakPoint.desktop: (d) {
    return 1025 < d && d < 1200;
  },
  BreakPoint.largeScreen: (d) {
    return 1201 < d;
  },
};

enum BreakPoint {
  mobile,
  tablet,
  laptop,
  desktop,
  largeScreen,
}
