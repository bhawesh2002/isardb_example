import 'package:isar/isar.dart';

part 'user_model.g.dart';

@Collection()
class User {
  Id id = Isar.autoIncrement;

  String? name;
  String? email;
}
