import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_example/models/recipie_model.dart';
import 'package:path_provider/path_provider.dart';

class RecipeService {
  late Future<Isar> _isar;

  RecipeService() {
    _isar = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [RecipeSchema],
        directory: dir.path,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<List<Recipe>> fetchRecipes() async {
    final isar = await _isar;
    return await isar.recipes.where().findAll();
  }

  Future<void> deleteAllRecipes() async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      await isar.recipes.clear();
    });
  }

  Future<void> deleteRecipe(int id) async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      final success = await isar.recipes.delete(id);
      debugPrint(success ? 'Deleted Successfully' : "Unable to delete");
    });
  }

  Future<void> addRecipe({required Recipe recipe}) async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      await isar.recipes.put(recipe);
    });
  }

  Future<void> modifyRecipe(int id,
      {String? name,
      String? description,
      String? imgPath,
      List<Ingredient>? ingredients}) async {
    final isar = await _isar;

    final oldRecipe = await isar.recipes.get(id);
    final newRecipe = oldRecipe
      ?..name = name ?? oldRecipe.name
      ..description = description ?? oldRecipe.description
      ..imgPath = imgPath ?? oldRecipe.imgPath
      ..ingredients = ingredients ?? oldRecipe.ingredients;
    await isar.writeTxn(() async {
      await isar.recipes.put(newRecipe!);
    });
  }
}
