import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboart/core/repos/image_repo.dart';
import 'package:fruit_hub_dashboart/core/repos/product_repo.dart';
import 'package:fruit_hub_dashboart/core/service/get_it.dart';
import 'package:fruit_hub_dashboart/feature/add_product/presentation/manage/add_product_cubit/add_product_cubit.dart';
import 'package:fruit_hub_dashboart/feature/add_product/presentation/views/widgets/add_product_view_body_bloc_consumer.dart';

import '../../../../core/utils/app_text_styles.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = '/add-product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Add Product",
          style: TextStyles.heading5Bold,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) =>
            AddProductCubit(
              imageRepo: getIt.get<ImageRepo>(),
              productRepo: getIt.get<ProductRepo>(),
            ),
        child: const AddProductViewBodyBlocConsumer(),
      ),
    );
  }
}

