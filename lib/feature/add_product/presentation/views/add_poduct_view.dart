import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/feature/add_product/presentation/views/widgets/add_poduct_view_body.dart';

import '../../../../core/utils/app_text_styles.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = '/add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"
        ,style: TextStyles.heading5Bold,),
        centerTitle: true,
      ),
      body: const AddProductViewBody(),
    );
  }
}
