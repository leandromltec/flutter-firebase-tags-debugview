/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

import 'package:flutter/material.dart';

//Model para tagueamentos que são gravados como eventos no Firebase
//content_type - a tela ou menu selecionado
//item_id - o clique do botão mas a informação do mesmo
class TagModel {
  String contentType;
  String itemId;

  TagModel({@required this.contentType, @required this.itemId});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};

    if (contentType != null) map['content_type'] = contentType;
    if (itemId != null) map['item_id'] = itemId;

    return map;
  }
}
