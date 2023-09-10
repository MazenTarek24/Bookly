import 'ImageLinksModel.dart';
import 'IndustryIdentifierModel.dart';
import 'PanelizationSummaryModel.dart';
import 'ReadingModesModel.dart';

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifierModel>? industryIdentifiers;
  ReadingModesModel? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummaryModel? panelizationSummary;
  ImageLinksModel? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
  dynamic averageRating;
  dynamic ratingsCount;

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'] ?? "";
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? List<String>.from(json['authors']) : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    industryIdentifiers = json['industryIdentifiers'] != null
        ? List<IndustryIdentifierModel>.from(
        json['industryIdentifiers']
            .map((identifier) => IndustryIdentifierModel.fromJson(identifier)))
        : [];
    readingModes = ReadingModesModel.fromJson(json['readingModes']);
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'] != null
        ? List<String>.from(json['categories'])
        : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummaryModel.fromJson(json['panelizationSummary'])
        : null;
    imageLinks =
    json['imageLinks'] != null ? ImageLinksModel.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
    averageRating = json['averageRating']  ?? "0";
    ratingsCount = json['ratingsCount'] ?? "0" ;
  }
}
