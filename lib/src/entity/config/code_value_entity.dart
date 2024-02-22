import 'package:isar/isar.dart';

part 'code_value_entity.g.dart';

@Collection()
class CodeValueEntity {

  final Id? id;

  @Index(type: IndexType.value)
  @Index(composite: [CompositeIndex("code")], unique: true, replace: true)
  final String category;
  final String code;
  final String? description;
  final int? sortOrder;
  final bool hidden;

  CodeValueEntity(
      { this.id, required this.category, required this.code, this.description, this.sortOrder, this.hidden = false});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CodeValueEntity &&
          category == other.category &&
          code == other.code &&
          description == other.description &&
          sortOrder == other.sortOrder &&
          hidden == other.hidden;

  @override
  int get hashCode =>
      category.hashCode ^
      code.hashCode ^
      description.hashCode ^
      sortOrder.hashCode ^
      hidden.hashCode;

//Equals

}
