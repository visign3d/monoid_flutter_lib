import 'dart:convert';


import 'package:http/http.dart' as http;

import '../category/model/category_model.dart';

class XlsService {
  Map map = {};

  List<CategoryModel> categories = [];

  var url = Uri.https('script.google.com',
      'macros/s/AKfycbyfo_FP0dbp-lHyTbwW39vNwvKds2EWz13_lDeLYosEOVEgeIlLRlhJY-mXkdhuYKDD/exec');

  getData() async {
    var response = await http.get(
      url,
    );

    map = jsonDecode(response.body);

    var categorys = map['category'];
    for (var i in categorys) {
      categories.add(CategoryModel(
          id: i['id'],
          imageUrl: i['image_url'],
          name: i['name'],
          text: i['text']));
    }
  }
}
