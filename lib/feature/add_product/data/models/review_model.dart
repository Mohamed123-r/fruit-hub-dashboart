import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num rating;
  final DateTime date;
  final String reviewDescription;

  ReviewModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.date,
    required this.reviewDescription,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
      date: DateTime.parse(json['date']),
      reviewDescription: json['reviewDescription'],
    );
  }

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
      name: reviewEntity.name,
      image: reviewEntity.image,
      rating: reviewEntity.rating,
      date: reviewEntity.date,
      reviewDescription: reviewEntity.reviewDescription,
    );
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'rating': rating,
      'date': date.toString(),
      'reviewDescription': reviewDescription,
    };
  }
}