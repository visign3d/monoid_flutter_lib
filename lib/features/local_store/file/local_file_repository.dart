import 'package:universal_html/html.dart';

class LocalFileRepository {
  static Storage localStorage = window.localStorage;

  String? read(String key) {
    return localStorage[key];
    //html.locale
  }

  save(String key, String value) {
    localStorage[key]=value;
  }

  delete(String key){
    localStorage.remove(key);
  }

  clear(){
    localStorage.clear();
  }

}
