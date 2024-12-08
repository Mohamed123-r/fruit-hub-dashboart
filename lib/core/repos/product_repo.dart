import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboart/core/error/failures.dart';
import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductRepo {
  Future<Either<Failure, void>> addProduct(AddProductInputEntity addProductInputEntity);
}
