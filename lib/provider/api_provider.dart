import 'package:pyin_nay_b_lar/const/const_data.dart';
import 'package:pyin_nay_b_lar/model/activity_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'api_provider.g.dart';

@riverpod
class ApiNotifier extends _$ApiNotifier {
  @override
  Future<List<Activity>> build() async {
    var response = await http.get(Uri.parse(activityUrl));
    return activityFromJson(response.body);
  }
}
