import 'package:firebase_analytics/firebase_analytics.dart';
import '../../../model/tag_model.dart';

import 'analytic_service_interface.dart';

class AnalyticsService implements AnalyticServiceInterface {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  @override
  Future<void> registerEvent({String event, TagModel parameters}) async {
    await _analytics.logEvent(name: event, parameters: parameters.toJson());
  }

  @override
  Future<void> setCurrentScreen(String screenName) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }
}
