///
/// Q : query object
///
/// T : return type
///
///[T Function query(Q query)]

abstract class AQuery<Q,T>{
  AQuery(this.queryObject);

  Q queryObject;

  Future<T> query();
}