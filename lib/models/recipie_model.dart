import 'package:isar/isar.dart';
import 'package:isar_example/utils/constants/ingredient_keys.dart';
import 'package:isar_example/utils/constants/recipie_keys.dart';
import 'package:uuid/uuid.dart';

part 'recipie_model.g.dart';

@Collection()
@Name('recipes')
class Recipe {
  Id id = Isar.autoIncrement;

  @Name(RECIPE_NAME)
  late String name;

  @Name(RECIPE_DESCRIPTION)
  late String description;

  @Name(RECIPE_INGREDENTS)
  List<Ingredient> ingredients = [];

  @Name(RECIPE_IMAGE)
  String? imgPath;

  @Name(RECIPE_CREATION_TIME)
  final DateTime createdAt;

  @Name(UNIQUE_ID)
  final String uniqueId;

  Recipe(
      {required this.name,
      required this.description,
      required this.ingredients,
      this.imgPath})
      : createdAt = DateTime.now(),
        uniqueId = const Uuid().v4();
}

@embedded
class Ingredient {
  @Name(INGREDIENT_NAME)
  String? name;

  @Name(INGREDIENT_QUANTITY)
  double? quantity;

  @Name(INGREDIENT_UNIT)
  String? unit;

  @Name(INGREDIENT_IS_OPTIONAL)
  bool? isOptional;
}
