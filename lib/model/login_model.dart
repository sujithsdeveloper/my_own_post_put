// To parse this JSON data, do
//
//     final logInResModel = logInResModelFromJson(jsonString);

import 'dart:convert';

LogInResModel logInResModelFromJson(String str) => LogInResModel.fromJson(json.decode(str));

String logInResModelToJson(LogInResModel data) => json.encode(data.toJson());

class LogInResModel {
    String? refresh;
    String? access;
    int? id;
    String? name;
    String? place;
    String? email;

    LogInResModel({
        this.refresh,
        this.access,
        this.id,
        this.name,
        this.place,
        this.email,
    });

    factory LogInResModel.fromJson(Map<String, dynamic> json) => LogInResModel(
        refresh: json["refresh"],
        access: json["access"],
        id: json["id"],
        name: json["name"],
        place: json["place"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "id": id,
        "name": name,
        "place": place,
        "email": email,
    };
}
