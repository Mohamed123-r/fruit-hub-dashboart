import 'dart:io';

import '../../domain/entities/add_product_input_entity.dart';

class AddProductInputModel {
  final String name;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String code;
  String? urlImage;

  AddProductInputModel(
      {required this.name,required this.isFeatured,
        required this.description,
        required this.price,
        required this.image,
        required this.code,
        this.urlImage});

  factory AddProductInputModel.fromEntity(AddProductInputEntity entity) => AddProductInputModel(
      name: entity.name,
      isFeatured: entity.isFeatured,
      description: entity.description,
      price: entity.price,
      image: entity.image,
      code: entity.code,
      urlImage: entity.urlImage);

  toJson() => toMap();
  toMap() => {
    "name": name,
    "description": description,
    "price": price,
    "image": urlImage,
    "isFeatured": isFeatured,
    "code": code,
  };
}
