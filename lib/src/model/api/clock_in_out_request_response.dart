enum EmployeeClockEventTypes {
  CLOCK_IN,
  CLOCK_OUT
}

class ClockInOutApiRequest {
  String? empId;
  String? storeId;
  String? type;

  ClockInOutApiRequest({this.empId, this.storeId, this.type});

  ClockInOutApiRequest.fromJson(Map<String, dynamic> json) {
    empId = json['empId'];
    storeId = json['storeId'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['empId'] = empId;
    data['storeId'] = storeId;
    data['Type'] = type;
    return data;
  }
}