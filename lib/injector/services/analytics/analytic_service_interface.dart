import '../../../model/tag_model.dart';

//Inteface para serviço do Analyticas
abstract class AnalyticServiceInterface {
  Future<void> registerEvent({String event, TagModel parameters});
  Future<void> setCurrentScreen(String screenName);
}
