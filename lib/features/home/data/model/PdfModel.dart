class PdfModel {
  bool? isAvailable;
  String? acsTokenLink;

  PdfModel.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
}