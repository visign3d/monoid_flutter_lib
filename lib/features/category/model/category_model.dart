

import '../../../abstract/model/a_object.dart';

class CategoryModel extends AObject {
  final String text;

  final String name;

  final String imageUrl;

  CategoryModel(
      {this.text = '', this.name = '', this.imageUrl = '', super.id = ''});

  factory CategoryModel.fromJson(dynamic json) {
    var c = CategoryModel(
        id: json['id'],
        imageUrl: json['image_url'],
        name: json['name'],
        text: json['text']);

    return c;
  }
}
