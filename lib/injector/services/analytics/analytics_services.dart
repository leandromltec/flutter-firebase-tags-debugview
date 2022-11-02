/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:firebase_analytics/firebase_analytics.dart';
import '../../../model/tag_model.dart';

import 'analytic_service_interface.dart';

class AnalyticsService implements AnalyticServiceInterface {
  
  //Instância que fornece os métodos para registrar os eventos no Firebase
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  //Envias os eventos e observa alguma alteração
  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  //Registra os eventos (clique dos botões) no Firebase onde são analizados no Debug View
  @override
  Future<void> registerEvent({String event, TagModel parameters}) async {
    await _analytics.logEvent(name: event, parameters: parameters.toJson());
  }

  //Registra as páginas carregadas onde são analizadas no Debug View
  @override
  Future<void> setCurrentScreen(String screenName) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }
}
