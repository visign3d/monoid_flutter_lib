
///implement functions

abstract class AContainer {
  put<T>(T object, String? id);

  T get<T>(String? id);

  lazyPut<T>(T object, String? id);
}
