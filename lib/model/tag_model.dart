import 'package:flutter/material.dart';

class TagModel {
  String contentType;
  String itemId;

  TagModel({@required this.contentType, @required this.itemId});

  Map<String, dynamic> toJson() {
    var map = Map<String, dynamic>();

    if (contentType != null) map['content_type'] = contentType;
    if (itemId != null) map['item_id'] = itemId;

    return map;
  }
}
