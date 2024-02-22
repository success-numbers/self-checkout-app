// Store Id
// Workstation Id
// User Id
// User Name
// User Email
// User Phone
// Business Date

class StoreConfigCacheManager {
  static int storeId = 0;
  static int workstationId = 0;
  static String userId = "";
  static String userName = "";
  static String userEmail = "";
  static DateTime? lastClockedIn = null;
  static DateTime? lastClockedOut = null;

  static init(
      {required int storeId,
      required int workstationId,
      required String userId,
      required String userName,
      required String userEmail,
      DateTime? lastClockedIn}) {
    StoreConfigCacheManager.storeId = storeId;
    StoreConfigCacheManager.workstationId = workstationId;
    StoreConfigCacheManager.userId = userId;
    StoreConfigCacheManager.userName = userName;
    StoreConfigCacheManager.userEmail = userEmail;
    StoreConfigCacheManager.lastClockedIn = lastClockedIn;
  }
}
