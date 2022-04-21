import 'package:flutter/material.dart';

class Navigation {
  static navigateTo(BuildContext context, String routePath) {
    Navigator.pushNamed(context, routePath);
  }

  static navigateAndFinish(BuildContext context, String routePath) {
    Navigator.pushReplacementNamed(context, routePath);
  }

  static navigatePushNamedAndRemoveAll(BuildContext context, String routePath) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(routePath, (Route<dynamic> route) => false);
  }

  static navigatePushNamedAndRemoveUntil(BuildContext context,
      {required String navigatePath, required String untilPath}) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(navigatePath, ModalRoute.withName(untilPath));
  }

  static navigatePushNamedAndRemoveUntilWithArguments(BuildContext context,
      {required String navigatePath, required String untilPath, Object? data}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        navigatePath, ModalRoute.withName(untilPath),
        arguments: data);
  }

  static navigateWithArgument(BuildContext context, String route, Object data) {
    Navigator.pushNamed(context, route, arguments: data);
  }

  static finishAndNavigateWithArgument(
      BuildContext context, String route, Object data) {
    Navigator.pushReplacementNamed(context, route, arguments: data);
  }
}
