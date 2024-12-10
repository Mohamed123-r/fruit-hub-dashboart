import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboart/core/widgets/custom_progress_hud.dart';

import '../../../../../core/helper_function/custom_error.dart';
import '../../manage/add_product_cubit/add_product_cubit.dart';
import 'add_poduct_view_body.dart';

class AddProductViewBodyBlocConsumer extends StatelessWidget {
  const AddProductViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          customSuccess(context, massage: 'Product Added Successfully');
        }
        if (state is AddProductError) {
          customError(context, massage: state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is AddProductLoading,
          child: const AddProductViewBody(),
        );
      },
    );
  }
}
