class PanelizationSummaryModel {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummaryModel.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
}