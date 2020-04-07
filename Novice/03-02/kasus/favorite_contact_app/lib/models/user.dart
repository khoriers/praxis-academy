// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  final List<Result> results;

  User({
    @required this.results,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class Result {
  final Name name;
  final String email;
  final String phone;
  final Picture picture;
  final String nat;
  bool favorite;

  set setFavorite(bool favorite) {
    this.favorite = favorite;
  }

  Result({
    @required this.name,
    @required this.email,
    @required this.phone,
    @required this.picture,
    @required this.nat,
    @required this.favorite,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        name: Name.fromMap(json["name"]),
        email: json["email"],
        phone: json["phone"],
        picture: Picture.fromMap(json["picture"]),
        nat: json["nat"],
        favorite: false,
      );

  Map<String, dynamic> toMap() => {
        "name": name.toMap(),
        "email": email,
        "phone": phone,
        "picture": picture.toMap(),
        "nat": nat,
        "favorite": favorite,
      };
}

class Name {
  final String title;
  final String first;
  final String last;

  Name({
    @required this.title,
    @required this.first,
    @required this.last,
  });

  factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "first": first,
        "last": last,
      };
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({
    @required this.large,
    @required this.medium,
    @required this.thumbnail,
  });

  factory Picture.fromJson(String str) => Picture.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Picture.fromMap(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toMap() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
      };
}
