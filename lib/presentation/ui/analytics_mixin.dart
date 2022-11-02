/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import '../../model/tag_model.dart';

import '../../injector/services/analytics/analytics_services.dart';
import '../../strings/analytics_constants.dart';

mixin AnalyticsMixin {
  final analyticsServices = AnalyticsService();

  Future<void> clickRegisterEvent(String contentTypeEvent, itemIdEvent) async {
    await analyticsServices.registerEvent(
        event: AnalyticsConstants.selectContent,
        parameters:
            TagModel(contentType: contentTypeEvent, itemId: itemIdEvent));
  }

  Future<void> clickRegisterEventGoBack(String contentTypeEvent) async {
    await analyticsServices.registerEvent(
        event: AnalyticsConstants.selectContent,
        parameters: TagModel(
            contentType: contentTypeEvent, itemId: AnalyticsConstants.btnBack));
  }

  Future<void> screenViewRegister({String screenRoute}) async {
    await analyticsServices
        .setCurrentScreen(AnalyticsConstants.initStateScreenView(screenRoute));
  }
}
