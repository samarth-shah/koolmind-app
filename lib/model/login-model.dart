// To parse this JSON data, do
//
//     final taskListModel = taskListModelFromJson(jsonString);

import 'dart:convert';

TaskListModel taskListModelFromJson(String str) => TaskListModel.fromJson(json.decode(str));

String taskListModelToJson(TaskListModel data) => json.encode(data.toJson());

class TaskListModel {
    TaskListModel({
        this.data,
        this.accessToken,
        this.tokenType,
        this.statusCode,
        this.message,
    });

    Data? data;
    String? accessToken;
    String? tokenType;
    int? statusCode;
    String? message;

    factory TaskListModel.fromJson(Map<String, dynamic> json) => TaskListModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        statusCode: json["status_code"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "access_token": accessToken,
        "token_type": tokenType,
        "status_code": statusCode,
        "message": message,
    };
}

class Data {
    Data({
        this.id,
        this.referralId,
        this.referredId,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.avatar,
        this.active,
        this.provider,
        this.device,
        this.language,
        this.otp,
        this.timezone,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.role,
        this.isVerified,
        this.name,
    });

    String? id;
    String? referralId;
    dynamic referredId;
    String? firstName;
    String? lastName;
    String? email;
    String? phone;
    dynamic avatar;
    bool? active;
    String? provider;
    String? device;
    String? language;
    dynamic otp;
    String? timezone;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? role;
    bool? isVerified;
    String? name;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        referralId: json["referral_id"],
        referredId: json["referred_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        avatar: json["avatar"],
        active: json["active"],
        provider: json["provider"],
        device: json["device"],
        language: json["language"],
        otp: json["otp"],
        timezone: json["timezone"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        role: json["role"],
        isVerified: json["is_verified"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "referral_id": referralId,
        "referred_id": referredId,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "avatar": avatar,
        "active": active,
        "provider": provider,
        "device": device,
        "language": language,
        "otp": otp,
        "timezone": timezone,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "role": role,
        "is_verified": isVerified,
        "name": name,
    };
}
