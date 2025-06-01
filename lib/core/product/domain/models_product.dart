import 'package:equatable/equatable.dart';
import 'package:projectimagefirb/core/product/domain/models_rating.dart';

class ModelsProduct extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final ModelsRating modelsRating;

  const ModelsProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.modelsRating,
  });

  factory ModelsProduct.fromJson(Map<String, dynamic> json) {
    return ModelsProduct(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      modelsRating: ModelsRating.fromJson(json['rating']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'modelsRating': modelsRating,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    title,
    price,
    description,
    category,
    image,
    modelsRating,
  ];
}
