import 'package:uuid/uuid.dart';

class Recipe {
  final String name;

  final String description;
  List<Ingredient> ingredients = [];

  String? imgPath;

  final DateTime createdAt;

  final String uniqueId;

  Recipe(
      {required this.name,
      required this.description,
      required this.ingredients,
      this.imgPath})
      : createdAt = DateTime.now(),
        uniqueId = const Uuid().v4();
}

class Ingredient {
  final String name;

  final double quantity;

  final String? unit;

  final bool? isOptional;

  Ingredient(
      {required this.name,
      required this.quantity,
      required this.unit,
      required this.isOptional});
}
