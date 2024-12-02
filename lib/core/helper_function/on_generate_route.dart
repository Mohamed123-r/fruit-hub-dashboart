import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/feature/add_product/presentation/views/add_poduct_view.dart';
import 'package:fruit_hub_dashboart/feature/dashboart/presentation/views/dashboard_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (_) => const DashboardView());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (_) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}
