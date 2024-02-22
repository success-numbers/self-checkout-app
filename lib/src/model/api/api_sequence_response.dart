class ApiSequenceResponse {
  String? seqId;
  int? seqValue;
  ApiSequenceResponse({this.seqId});

  ApiSequenceResponse.fromJson(Map<String, dynamic> json) {
    seqId = json['seq'];
    seqValue = json['seqValue'];
  }
}
