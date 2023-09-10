class ReadingModesModel {
  bool? text;
  bool? image;

  ReadingModesModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }
}