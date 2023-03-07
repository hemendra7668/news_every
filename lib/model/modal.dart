// To parse this JSON data, do
//
//     final Article_model = Article_modelFromJson(jsonString);

import 'dart:convert';

Article_model Article_modelFromJson(String str) => Article_model.fromJson(json.decode(str));

// ignore: non_constant_identifier_names
String Article_modelToJson(Article_model data) => json.encode(data.toJson());

class Article_model {
    Article_model({
        required this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
        required this.content,
    });

    String author;
    String title;
    String description;
    String url;
    String urlToImage;
    DateTime publishedAt;
    String content;

    factory Article_model.fromJson(Map<String, dynamic> json) => Article_model(
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
    };
}
