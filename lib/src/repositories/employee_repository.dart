import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../database/db_provider.dart';
import '../entity/pos/employee_entity.dart';
import '../model/api/api.dart';
import '../model/api/clock_in_out_request_response.dart';
import '../model/api/create_store_employee_request.dart';
import '../model/api/get_employee_response.dart';
import '../util/helper/rest_api.dart';

class EmployeeRepository with DatabaseProvider {
  final log = Logger('EmployeeRepository');

  final RestApiClient restClient;

  EmployeeRepository({required this.restClient});

  // Future<EmployeeEntity?> getEmployeeByUserId(String userId) async {
  //   try {
  //     var data = await db.employeeEntitys.where().employeeIdEqualTo(userId).findFirst();
  //     return data;
  //   } catch (e) {
  //     log.severe(e);
  //   }
  //   return null;
  // }

  Future<List<UserBusiness>> getBusinessAssociatedWithUser(
      String userId) async {
    List<UserBusiness> userBusinesses = [];
    try {
      var option = RestOptions(path: '/user/$userId/business');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        var decode = json.decode(rawResp.body) as List;
        for (var item in decode) {
          userBusinesses.add(UserBusiness.fromJson(item));
        }
      }
    } catch (e, st) {
      log.severe(e.toString(), e, st);
      rethrow;
    }
    return userBusinesses;
  }

  Future<EmployeeEntity?> getEmployeeByStoreAndUserId(
      String storeId, String userId) async {
    try {
      var option = RestOptions(path: '/business/$storeId/employee/$userId');
      var rawResp = await restClient.get(restOptions: option);

      if (rawResp.statusCode == 200) {
        var resp = GetUserResponse.fromJson(restClient.parsedResponse(rawResp));

        var deviceKey = "default";
        var register = 0;
        if (resp.storeData.registerMap.isNotEmpty) {
          deviceKey = resp.storeData.registerMap.keys.first;
          register = resp.storeData.registerMap[deviceKey]!;
        }

        EmployeeEntity emp = EmployeeEntity(
          employeeId: resp.employee.employeeId,
          firstName: resp.employee.firstName,
          middleName: resp.employee.middleName,
          lastName: resp.employee.lastName,
          locale: resp.employee.locale,
          email: resp.employee.email,
          phone: resp.employee.phone ?? resp.employee.employeeId,
          birthDate: resp.employee.dob,
          gender: resp.employee.gender,
          picture: resp.employee.picture,
          deviceKey: deviceKey,
          registerId: '$register',
          roles: resp.storeData.roles.roles,
          access: resp.storeData.roles.access,
          lastClockedInAt: resp.storeData.lastClockedInAt,
          lastClockedOutAt: resp.storeData.lastClockedOutAt,
        );
        await db.writeTxn(() async {
          await db.employeeEntitys.put(emp);
          // get the
        });

        return emp;
      }
    } catch (e) {
      log.severe(e);
    }

    // Get the data form the local database if present.
    try {
      var data = await db.employeeEntitys
          .where()
          .employeeIdEqualTo(userId)
          .findFirst();
      if (data != null) {
        return data;
      }
    } catch (e) {
      log.severe(e);
    }

    return null;
  }

  Future<bool> clockInOutEmployee(String storeId, String employeeId,
      EmployeeClockEventTypes eventType) async {
    try {
      var req = ClockInOutApiRequest(
          empId: employeeId, storeId: storeId, type: eventType.name);
      await restClient.post(
          restOptions: RestOptions(path: "/clock", body: json.encode(req.toJson())));
      return true;
    } catch (ex) {
      log.severe(ex);
      return false;
    }
  }

  Future<List<StoreEmployee>> getEmployeeByStoreId(String storeId) async {
    List<StoreEmployee> storeEmployees = [];
    try {
      var option = RestOptions(path: '/business/$storeId/employee');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        var decode = json.decode(rawResp.body) as List;
        for (var item in decode) {
          storeEmployees.add(StoreEmployee.fromJson(item));
        }
      }
    } catch (e) {
      rethrow;
    }
    return storeEmployees;
  }

  Future<void> createNewEmployeeForStore(CreateStoreEmployeeRequest emp) async {
    try {
      var body = json.encode(emp.toJson());
      var option =
          RestOptions(path: '/business/${emp.businessId}/employee', body: body);
      var rawResp = await restClient.post(restOptions: option);
      if (rawResp.statusCode == 200 || rawResp.statusCode == 201) {
      } else {
        log.info('Failed to create new employee for store');
        throw Exception(
            'Failed to create new employee ${rawResp.statusCode} : ${rawResp.body}');
      }
    } catch (e) {
      log.severe(e);
      rethrow;
    }
  }

  Future<void> updateEmployee(UpdateEmployeeRequest emp, String userId) async {
    try {
      var body = json.encode(emp.toJson());
      var option = RestOptions(path: '/user/$userId', body: body);
      var rawResp = await restClient.put(restOptions: option);
      if (rawResp.statusCode == 200 || rawResp.statusCode == 201) {
      } else {
        log.info('Failed to update employee.');
        throw Exception(
            'Failed update employee ${rawResp.statusCode} : ${rawResp.body}');
      }
    } catch (e) {
      log.severe(e);
      rethrow;
    }
  }

  Future<void> updateEmployeeAccess(
      String employeeId, String storeId, StoreEmployeeAccess data) async {
    try {
      var body = json.encode(data.toJson());
      var option = RestOptions(
          path: '/business/$storeId/employee/$employeeId/access', body: body);
      var rawResp = await restClient.put(restOptions: option);
      if (rawResp.statusCode == 200 || rawResp.statusCode == 201) {
        log.info('Successfully updated employee access.');
      } else {
        log.info('Failed to update employee access.');
        throw Exception(
            'Failed update employee access ${rawResp.statusCode} : ${rawResp.body}');
      }
    } catch (e) {
      log.severe(e);
      rethrow;
    }
  }
}
