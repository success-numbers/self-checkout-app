import 'package:isar/isar.dart';

part 'employee_entity.g.dart';

@Collection()
class EmployeeEntity {
  Id? id;

  @Index(unique: true, type: IndexType.value, replace: true)
  String? employeeId;

  String? firstName;
  String? middleName;
  String? lastName;
  String? locale;
  String? email;
  String phone;
  String? gender;
  String? picture;
  DateTime? birthDate;
  String? allocatedStore;
  String? currentStore;
  int? lastClockedInAt;
  int? lastClockedOutAt;
  String? deviceKey;
  String? registerId;
  List<String>? roles;
  String? access;

  EmployeeEntity({
    this.employeeId,
    this.firstName,
    this.middleName,
    this.lastName,
    this.locale,
    this.email,
    required this.phone,
    this.gender,
    this.picture,
    this.birthDate,
    this.allocatedStore,
    this.currentStore,
    this.lastClockedInAt,
    this.lastClockedOutAt,
    this.deviceKey,
    this.registerId,
    this.roles = const [],
    this.access = '',
  });

  DateTime? getLastClockedIn() {
    if (lastClockedInAt == null ||
        (lastClockedInAt ?? 0) < (lastClockedOutAt ?? 0)) {
      return null;
    } else {
      return DateTime.fromMillisecondsSinceEpoch(lastClockedInAt!);
    }
  }
}
