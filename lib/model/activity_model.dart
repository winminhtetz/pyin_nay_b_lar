import 'dart:convert';

List<Activity> activityFromJson(String str) => List<Activity>.from(json.decode(str).map((x) => Activity.fromJson(x)));

String activityToJson(List<Activity> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Activity {
    String activity;
    String type;

    Activity({
        required this.activity,
        required this.type,
    });

    factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        activity: json["activity"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
    };
}
