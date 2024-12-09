import 'package:fruit_hub_dashboart/core/repos/image_repo_impl.dart';
import 'package:fruit_hub_dashboart/core/repos/product_repo_impl.dart';
import 'package:fruit_hub_dashboart/core/service/database_service.dart';
import 'package:fruit_hub_dashboart/core/service/fire_storage.dart';
import 'package:fruit_hub_dashboart/core/service/storage_service.dart';
import 'package:get_it/get_it.dart';

import '../repos/image_repo.dart';
import '../repos/product_repo.dart';
import 'fire_store_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(FireStorageService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());
  getIt.registerSingleton<ImageRepo>(
      ImageRepoImpl(storageService: getIt.get<StorageService>()));
  getIt.registerSingleton<ProductRepo>(
      ProductRepoImpl(databaseService: getIt.get<DatabaseService>()));
}
