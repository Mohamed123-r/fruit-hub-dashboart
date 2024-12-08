 import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboart/core/repos/product_repo.dart';
import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/add_product_input_entity.dart';

import '../error/failures.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Failure, void>> addProduct(AddProductInputEntity addProductInputEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}