import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboart/core/repos/product_repo.dart';
import 'package:fruit_hub_dashboart/core/service/database_service.dart';
import 'package:fruit_hub_dashboart/feature/add_product/data/models/add_prodect_input_model.dart';
import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/add_product_input_entity.dart';

import '../error/failures.dart';
import '../utils/endpoints.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});

  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity) async {
    try {
      await databaseService.addData(
          path: EndPoints.kAddProductCollection,
          data:
              AddProductInputModel.fromEntity(addProductInputEntity).toJson());
      return const Right(null);
    } catch (e) {
      return const Left(
        ServerFailure("Failed to add product"),
      );
      return const Right(null);
    }
  }
}
