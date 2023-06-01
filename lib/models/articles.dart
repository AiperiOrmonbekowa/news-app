import 'package:step_5/models/source.dart';

class Articles {
  Articles(
      {required this.source,
      this.author,
      required this.title,
      this.description,
      required this.url,
      this.urlToImage,
      required this.publishedAt,
      this.content});

  Source source;
  String? author;
  String title;
  String? description;
  String url;
  String? urlToImage;
  DateTime publishedAt;
  String? content;

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: Source.fromJson(json["source"]),
      author: json["author"],
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
      publishedAt: DateTime.parse(json["publishedAt"]),
      content: json["content"],
    );
  }
}
