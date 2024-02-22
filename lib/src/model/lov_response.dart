// {"id":"Corporate","desc":"Corporate"}

class LovResponse {
  String? id;
  String? desc;

  LovResponse({this.id, this.desc});

  LovResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id']  = id;
    data['desc'] = desc;
    return data;
  }
}