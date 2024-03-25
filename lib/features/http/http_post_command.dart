//import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:http/http.dart' as http;

class HttpPostCommand extends ACommand<Future<http.Response>> {
  @override
  Future<http.Response> call() async {
    //var d = Dio();
    var r = http.put(Uri(path: 'https://monoid.b4a.app/functions/hello'),body:jsonEncode({}) ,
        headers: {
          "X-Parse-Application-Id": "ItaRrboV0xdyDAhQQZH98KbDty8iA2nWTyTMcMj6",
          "X-Parse-REST-API-Key": "Z8bj7AtBTbSSLI8IIX4VKrQFtAH1EPqv79I3ujnM",
          "Content-Type": "application/json",
        });
    //var response = Dio().get('https://parseapi.back4app.com/functions/hello');
    return r;
  }
}
