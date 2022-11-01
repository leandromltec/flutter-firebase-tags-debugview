class AnalyticsConstants {
  //Event constants
  static const String selectContent = 'select_content';

  //Botão Voltar
  static const String btnBack = 'clique:voltar';

  static initStateScreenView(String screenRoute) => 'tela:$screenRoute';
  static clickContentType(String contentType) => 'clique:$contentType'
      .toLowerCase()
      .replaceAll(' ', '-');

  static itemSelectedScreeView(String itemSelected) => ':$itemSelected'.toLowerCase()
      .replaceAll(' ', '-');
}
