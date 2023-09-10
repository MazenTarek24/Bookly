class ImageLinksModel {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinksModel.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
}