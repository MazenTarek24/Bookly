class IndustryIdentifierModel {
  String? type;
  String? identifier;

  IndustryIdentifierModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }
}