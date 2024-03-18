

abstract class ARepository<T> {
  Future<List<T>> getAll();

  Future<T?> getById(dynamic id);

  Future create(T item);

  Future update(T item);

  Future delete(T item);
}
