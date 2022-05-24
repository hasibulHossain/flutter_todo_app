import 'package:flutter/material.dart';
import '../../modules/modules.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return Home.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error'),),
        body: const Center(
          child: Text('Something went wrong, please close and re enter the app'),
        ),
      )
    );
  }
}