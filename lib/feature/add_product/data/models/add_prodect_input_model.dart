import 'dart:io';

import 'package:fruit_hub_dashboart/feature/add_product/data/models/review_model.dart';

import '../../domain/entities/add_product_input_entity.dart';

class AddProductInputModel {
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
  final List<ReviewModel> reviews;

  AddProductInputModel( {required this.bestSeller,
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
    required this.reviews,
  });

  factory AddProductInputModel.fromEntity(AddProductInputEntity entity) =>
      AddProductInputModel(
          name: entity.name,
          isFeatured: entity.isFeatured,
          description: entity.description,
          price: entity.price,
          image: entity.image,
          code: entity.code,
          urlImage: entity.urlImage,
          expirationMonths: entity.expirationMonths,
          numberOfCalories: entity.numberOfCalories,
          unitAmount: entity.unitAmount,
          aveRating: entity.aveRating,
          ratingCount: entity.ratingCount,
          isOrganic: entity.isOrganic,
         
          reviews:
              entity.reviews.map((e) => ReviewModel.fromEntity(e)).toList(), bestSeller:
              entity.bestSeller, );

  toJson() => toMap();

  toMap() => {
        "name": name,
        "description": description,
        "price": price,
        "image": urlImage,
        "isFeatured": isFeatured,
        "bestSeller":bestSeller,
        "code": code,
        "expirationMonths": expirationMonths,
        "numberOfCalories": numberOfCalories,
        "unitAmount": unitAmount,
        "aveRating": aveRating,
        "ratingCount": ratingCount,
        "isOrganic": isOrganic,
        "reviews": reviews
      };
}
