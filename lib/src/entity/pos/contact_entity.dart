import 'package:isar/isar.dart';
import 'address.dart';
part 'contact_entity.g.dart';

@Collection()
class ContactEntity {
  final Id? id;

  @Index(
      unique: true, replace: true, caseSensitive: true, type: IndexType.value)
  final String contactId;
  final String storeId;

  @Index()
  final String firstName;
  final String lastName;

  @Index()
  final String? phoneNumber;

  @Index()
  final String? alternatePhone;

  @Index()
  final String? email;

  final Address? shippingAddress;

  final Address? billingAddress;

  final String? panCard;
  final String? gstin;
  final String? customerType;

  late DateTime createTime;

  @Index(type: IndexType.value)
  DateTime? lastChangedAt;

  @Index(type: IndexType.value)
  DateTime? lastSyncAt;

  @Index(type: IndexType.value)
  int? syncState;

  ContactEntity(
      {this.id,
      required this.contactId,
      required this.firstName,
      required this.lastName,
      required this.storeId,
      this.phoneNumber,
      this.email,
      this.shippingAddress,
      this.billingAddress,
      this.panCard,
      this.gstin,
      required this.createTime,
      this.lastChangedAt,
      this.lastSyncAt,
      this.syncState,
      this.customerType,
      this.alternatePhone});


  static ContactEntity createGuestCustomer(String customerName) {

    // split the customer name
    final name = customerName.split(' ');
    var firstname = name[0];
    // concat the rest as last name
    var lastname = name.sublist(1).join(' ');

    return ContactEntity(
      contactId: 'guest',
      firstName: firstname,
      lastName: lastname,
      storeId: 'guest',
      createTime: DateTime.now(),
    );
  }
}

// class AddressConverter extends TypeConverter<Address?, String?> {
//   const AddressConverter(); // Converters need to have an empty const constructor
//
//   @override
//   Address? fromIsar(String? input) {
//     if (input == null) {
//       return null;
//     }
//     var inp = json.decode(input);
//     return Address.fromJson(inp);
//   }
//
//   @override
//   String? toIsar(Address? address) {
//     if (address == null) {
//       return null;
//     }
//     var out = address.toJson();
//     return json.encode(out);
//   }
// }
