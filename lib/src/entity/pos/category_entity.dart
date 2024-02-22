import 'package:isar/isar.dart';
part 'category_entity.g.dart';

@Collection()
class CategoryEntity {

  final Id? id;

  @Index(unique: true, type: IndexType.value, replace: true)
  String categoryId;

  String description;

  String? categoryType;

  int? sortOrder;

  @Index()
  List<String> parent;

  @Index(type: IndexType.value)
  int? syncState;

  CategoryEntity({this.id, required this.categoryId, required this.description, required this.parent,this.categoryType,this.sortOrder});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          categoryId == other.categoryId &&
          description == other.description &&
          categoryType == other.categoryType &&
          parent == other.parent &&
          syncState == other.syncState;

  @override
  int get hashCode =>
      id.hashCode ^
      categoryId.hashCode ^
      description.hashCode ^
      categoryType.hashCode ^
      parent.hashCode ^
      syncState.hashCode;
}

enum CategoryType {
  delivery("DELIVERY");
  final String value;
  const CategoryType(this.value);
}
