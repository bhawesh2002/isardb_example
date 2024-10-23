// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';
import 'package:isar_example/utils/constants/catrgory_keys.dart';

part 'category_model.g.dart';

@Collection()
@Name('category')
class CategoryModel {
  final id = Isar.autoIncrement;

  @Name(CATEGORY_NAME)
  final String name;

  @Name(CATEGORY_IMG)
  final String? image;

  @Name(CATEGORY_COLOR)
  final String color;

  CategoryModel({
    required this.name,
    required this.image,
    required this.color,
  });
}
