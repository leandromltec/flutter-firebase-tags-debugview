/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import '../../../model/tag_model.dart';

//Inteface para serviço do Analytics
abstract class AnalyticServiceInterface {
  Future<void> registerEvent({String event, TagModel parameters});
  Future<void> setCurrentScreen(String screenName);
}
