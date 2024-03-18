

import 'a_container.dart';

///Singleton class for implementing abstract dependency containers
class DC {
  static final DC _singleton = DC._internal();

  factory DC() {
    return _singleton;
  }

  static DC instance =_singleton;

  DC._internal();

   static late AContainer _container;

  static initialize(AContainer container) {
    _container = container;
  }

  static T get<T>([String? id]) => _container.get<T>(id);

  static lazyPut<T>(T object,[String? id]) => _container.lazyPut<T>(object,id);

  static T put<T>(T object, [String? id]) => _container.put<T>(object, id);
}
