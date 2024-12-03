import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:fruit_hub_dashboart/core/error/failures.dart';

import 'image_repo.dart';

class ImageRepoImpl implements ImageRepo {
  @override
  Future<Either<String, Failure>> uploadImage(File image) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}
