import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/repos/image_repo.dart';
import '../../../../../core/repos/product_repo.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {

  AddProductCubit(super.initialState, this.imageRepo, this.productRepo);
  final ImageRepo imageRepo ;
  final ProductRepo productRepo ;


}
