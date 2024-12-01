import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/feature/dashboart/presentation/views/dashboard_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardView());

    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}
