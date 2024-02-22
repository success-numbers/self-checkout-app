
import '../model/user_role_access_model.dart';

typedef VisibilityRule = String;

// SALE
// RETURN
// ITEM_SEARCH
// CUST_SEARCH
// TABLE_MGT
// REPORT
// EMP_MAINTAIN
// LOCALE_CHANGE
// TAX_CFG
// SEQ_CFG
// INVOICE_CFG
// RCPT_CFG
// DEAL_CFG

typedef AccessRule = int;

class UserAccessKey {

  static const UserAccessKey sale = UserAccessKey("SALE");
  static const UserAccessKey saleReturn = UserAccessKey("RETURN");
  static const UserAccessKey itemSearch = UserAccessKey("ITEM_SEARCH");
  static const UserAccessKey customerSearch = UserAccessKey("CUST_SEARCH");
  static const UserAccessKey tableMgt = UserAccessKey("TABLE_MGT");
  static const UserAccessKey report = UserAccessKey("REPORT");
  static const UserAccessKey employeeMaintain = UserAccessKey("EMP_MAINTAIN");
  static const UserAccessKey localeChange = UserAccessKey("LOCALE_CHANGE");
  static const UserAccessKey taxConfig = UserAccessKey("TAX_CFG");
  static const UserAccessKey sequenceConfig = UserAccessKey("SEQ_CFG");
  static const UserAccessKey invoiceConfig = UserAccessKey("INVOICE_CFG");
  static const UserAccessKey receiptConfig = UserAccessKey("RCPT_CFG");
  static const UserAccessKey dealConfig = UserAccessKey("DEAL_CFG");

  static const AccessRule create = 0x8;
  static const AccessRule read = 0x4;
  static const AccessRule update = 0x2;
  static const AccessRule delete = 0x1;

  final String accessKey;
  const UserAccessKey(this.accessKey);
}

// "_imageDisplayInProduct|Y",
// "_imageDisplayDuringSale|Y",
// "_showEmployeeImage|Y",
// "_configureSequence|Y",
// "_configureInvoice|Y",
// "_configureReceipt|Y",
// "_configureTable|Y",
// "_allowCustomerFromPhoneContact|Y",
// "_allowItemReturn|Y",
// "_storeType|F&B"

class VisibilityConfig {
  static const VisibilityRule imageDisplayInProduct = '_imageDisplayInProduct';
  static const VisibilityRule imageDisplayDuringSale = '_imageDisplayDuringSale';
  static const VisibilityRule showEmployeeImage = '_showEmployeeImage';
  static const VisibilityRule configureSequence = '_configureSequence';
  static const VisibilityRule configureInvoice = '_configureInvoice';
  static const VisibilityRule configureReceipt = '_configureReceipt';
  static const VisibilityRule configureTable = '_configureTable';
  static const VisibilityRule allowCustomerFromPhoneContact = '_allowCustomerFromPhoneContact';
  static const VisibilityRule allowItemReturn = '_allowItemReturn';
  static const VisibilityRule storeType = '_storeType';
}

class UtilityHelper {
  static hasAccessToUserConfRole (
      UserRoleAccessModel? userRoleAccessState,
      UserAccessKey? accessRuleName,
      List<AccessRule> accessRules
      ){
    int? index = userRoleAccessState?.userRoles!.indexOf(accessRuleName?.accessKey ?? 'N/A');
    if (index == null || index < 0) {
      return false;
    }
    String? rule = userRoleAccessState!.userAccess?[index];
    int currentAggregateRule = accessRules.fold(
        1, (previousValue, element) => previousValue | element);
    int userAccess = int.tryParse('0x$rule') ?? 0;
    if((currentAggregateRule & userAccess) == 0){
      return false;
    }
    return true;
  }
}

// typedef StoreConfigRule = String;

// class StoreConfig {
//   static const StoreConfigRule isStoreTypeRestaurant = 'is_store_type_restaurant';
//
//   final Map<StoreConfigRule, bool> _visibilityMap = {
//     isStoreTypeRestaurant: true,
//   };
//
//   bool isValid(StoreConfigRule rule) {
//     return _visibilityMap[rule] ?? false;
//   }
// }