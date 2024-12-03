import 'package:fruit_hub_dashboart/core/service/fire_storage.dart';
import 'package:fruit_hub_dashboart/core/service/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(FireStorageService());
}
