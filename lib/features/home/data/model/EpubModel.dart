class EpubModel {
  bool? isAvailable;

  EpubModel.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
  }
}