import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:selfcheckout/src/database/db_provider.dart';
import 'package:selfcheckout/src/entity/trans_header_entity.dart';
import 'package:selfcheckout/src/util/helper/rest_api.dart';

import '../model/api/loyalytic_customer_request.dart';

class MedRepository with DatabaseProvider {
  final log = Logger('MedRepository');

  final RestApiClient restClient;

  MedRepository({required this.restClient});

  Future<LoyalyticCustomer> fetchCustomerDetailsByPhoneNo(String phoneNo) async {
    try {
      var option = RestOptions(path: '/mock/loginLoyalytics');
      var rawResp = await restClient.post(
          restOptions: RestOptions(path: "/mock/loginLoyalytics", body: json.encode(<String, String?>{
            'phoneNo': phoneNo,
          })));
      if (rawResp.statusCode == 200) {
        LoyalyticCustomer customerData = LoyalyticCustomer.fromJson(json.decode(rawResp.body));
        print("MEOW SUCCESS CUSTOMER DATA $customerData");
        return customerData;
      }else{
        LoyalyticCustomer jsonResp = LoyalyticCustomer.fromJson(json.decode(rawResp.body));
        throw "${jsonResp.message}";
      }
    } catch (e) {
      log.severe('Error! fetchCustomerDetails', e.toString());
      rethrow;
    }
  }

  Future<LoyalyticCustomer> fetchCustomerDetailsByLoyalyticId(String loyalyticId) async {
    try {

      var rawResp = await restClient.post(
          restOptions: RestOptions(path: "/mock/loginLoyalytics", body: json.encode(<String, String?>{
            'loyalyticId': loyalyticId,
          })));
      if (rawResp.statusCode == 200) {
        var customerData = LoyalyticCustomer.fromJson(json.decode(rawResp.body));
        return customerData;
      }else{
        var jsonResp = LoyalyticCustomer.fromJson(json.decode(rawResp.body));
        throw "${jsonResp.message}";
      }
    } catch (e) {
      log.severe('Error! fetchCustomerDetails', e.toString());
      rethrow;
    }
  }
  // Future<int> createNewTaxGroup(TaxGroupEntity taxGroup) async {
  //   taxGroup.lastChangedAt = DateTime.now();
  //   // Set the syncState based on the existing syncState or the default value.
  //   taxGroup.syncState = taxGroup.syncState ?? localCreated;
  //   return db.writeTxn(() => db.taxGroupEntitys.put(taxGroup));
  // }

  Future<void> syncTransaction(TransactionHeaderEntity trans) async {
    try {
      await restClient.post(
          restOptions: RestOptions(
              path: "/business/${trans.storeId}/transaction",
              body: json.encode(trans)
          )
      );
      log.info("EEEEEEEEE CHALLLLLLLL GAYAAAAAAAAAAAAAAAAA");
    } catch (e) {
      log.severe("FATTTTTTTTTTT GAYA BHAIIIIIIIIIIIIIIIIII");
    }
  }
}
