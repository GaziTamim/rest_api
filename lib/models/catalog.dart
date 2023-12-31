import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);



List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  int userId;
  int id;
  String title;
  String body;

  Item({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
