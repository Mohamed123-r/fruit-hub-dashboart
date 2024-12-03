import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboart/core/error/failures.dart';

abstract class ImageRepo {
  Future<Either<String, Failure>> uploadImage(File image);
}
