import '../../../model/tag_model.dart';

abstract class AnalyticServiceInterface {
  Future<void> registerEvent({String event, TagModel parameters});
  Future<void> setCurrentScreen(String screenName);
}
