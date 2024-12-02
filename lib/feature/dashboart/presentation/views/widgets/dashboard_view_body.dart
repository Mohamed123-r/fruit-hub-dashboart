import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/core/widgets/custom_button.dart';

import '../../../../add_product/presentation/views/add_poduct_view.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
              title: "Add Data",
              onPressed: () {
                Navigator.pushNamed(context, AddProductView.routeName);
              }),
        )
      ],
    );
  }
}