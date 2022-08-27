class HistoryModel {
  String? id;
  String? userId;
  String? type;
  DateTime? date;
  String? total;
  String? details;
  DateTime? createdAt;
  DateTime? updatedAt;

  HistoryModel({
    this.id,
    this.userId,
    this.type,
    this.date,
    this.total,
    this.details,
    this.createdAt,
    this.updatedAt,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return HistoryModel(
      id: json["id"],
      userId: json["user_id"],
      type: json["type"],
      date: DateTime.parse(json["date"]),
      total: json["total"],
      details: json["details"],
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "user_id": userId,
      "type": type,
      "date": date!.toIso8601String(),
      "total": total,
      "details": details,
      "created_at": createdAt!.toIso8601String(),
      "updated_at": updatedAt!.toIso8601String(),
    };
  }
}
