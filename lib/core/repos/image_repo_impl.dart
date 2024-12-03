import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:fruit_hub_dashboart/core/error/failures.dart';
import 'package:fruit_hub_dashboart/core/utils/endpoints.dart';

import '../service/storage_service.dart';
import 'image_repo.dart';

class ImageRepoImpl implements ImageRepo {
  final StorageService storageService;

  ImageRepoImpl({required this.storageService});

  @override
  Future<Either<Failure, String>> uploadImage(File image) async {
    try {
      String url =
          await storageService.uploadImage(file: image, pass: EndPoints.images);
      return Right(url);
    } catch (e) {
      return const Left(
        ServerFailure("Failed to upload image "),
      );
    }
  }
}
