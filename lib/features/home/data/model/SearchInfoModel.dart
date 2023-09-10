class SearchInfoModel {
  String? textSnippet;

  SearchInfoModel.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'];
  }
}