import 'package:isar/isar.dart';

part 'recipie_model.g.dart';

@Collection()
@Name('recipes')
class Recipe {
  Id id = Isar.autoIncrement;
  late String name;
  late String description;
  List<Ingredient> ingredients = [];
  String? imgPath;
  final DateTime createdAt;

  Recipe(
      {required this.name,
      required this.description,
      required this.ingredients})
      : createdAt = DateTime.now();
}

@embedded
class Ingredient {
  String? name;
  double? quantity;
  String? unit;
  bool? isOptional;
}
