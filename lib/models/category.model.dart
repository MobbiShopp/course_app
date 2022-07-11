import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  int id;
  String name;
  int lessonCount;
  String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.lessonCount,
  });

// Constructor that turns json into a category
  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        lessonCount: json["lessonCount"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lessonCount": lessonCount,
        "image": image,
      };
}

const data = [
  {
    "id": 1,
    "name": "Information Technology",
    "lessonCount": 20,
    "image":
        "https://images.pexels.com/photos/574069/pexels-photo-574069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  },
  {
    "id": 2,
    "name": "Photography",
    "lessonCount": 13,
    "image":
        "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  },
  {
    "id": 3,
    "name": "Trucking",
    "lessonCount": 10,
    "image":
        "https://images.pexels.com/photos/2199293/pexels-photo-2199293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  },
  {
    "id": 4,
    "name": "Baking",
    "lessonCount": 29,
    "image":
        "https://images.pexels.com/photos/3850405/pexels-photo-3850405.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  },
  {
    "id": 5,
    "name": "Video Editing",
    "lessonCount": 6,
    "image":
        "https://images.pexels.com/photos/1117132/pexels-photo-1117132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  },
];

final List<Category> categories = categoryFromJson(jsonEncode(data));
