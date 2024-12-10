import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/repos/image_repo.dart';
import '../../../../../core/repos/product_repo.dart';
import '../../../domain/entities/add_product_input_entity.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final ImageRepo imageRepo;

  final ProductRepo productRepo;

  AddProductCubit({required this.imageRepo, required this.productRepo})
      : super(AddProductInitial());

  Future<void> addProduct(AddProductInputEntity addProductInputEntity) async {
    emit(AddProductLoading());
    var result = await imageRepo.uploadImage(addProductInputEntity.image!);
    result.fold(
      (l) => emit(AddProductError(l.message)),
      (url) async {
        addProductInputEntity.urlImage = url;
        var result = await productRepo.addProduct(addProductInputEntity);
        result.fold(
          (l) => emit(AddProductError(l.message)),
          (r) => emit(AddProductSuccess()),
        );
      },
    );
  }
}
