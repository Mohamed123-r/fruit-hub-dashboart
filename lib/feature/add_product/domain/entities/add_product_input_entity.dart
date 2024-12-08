import 'dart:io';

class AddProductInputEntity {
  final String name;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String code;
   String? urlImage;

  AddProductInputEntity(
      {required this.name,required this.isFeatured,
      required this.description,
      required this.price,
      required this.image,
      required this.code,
       this.urlImage});
}
