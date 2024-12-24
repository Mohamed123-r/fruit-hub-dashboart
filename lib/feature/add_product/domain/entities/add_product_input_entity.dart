import 'dart:io';

import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/review_entity.dart';

class AddProductInputEntity {
  final String name;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String code;
  String? urlImage;
  final int expirationMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitAmount;
  final num aveRating;
  final num ratingCount;
  final num bestSeller;
  final List<ReviewEntity> reviews ;


  AddProductInputEntity( { this.bestSeller=0,
    required this.name,
    required this.isFeatured,
    required this.description,
    required this.price,
    required this.image,
    required this.code,
    this.urlImage,
    required this.expirationMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.aveRating = 0,
    this.ratingCount = 0,
    this.isOrganic = false,
    required this.reviews ,
  });
}
