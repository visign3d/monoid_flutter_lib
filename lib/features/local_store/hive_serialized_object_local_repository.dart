import 'dart:convert';

import 'package:hive/hive.dart';

import '../../abstract/model/a_serializable.dart';
import '../../abstract/repository/a_serializable_object_local_repository.dart';

///[T] is for object type
class HiveSerializedObjectRepository<T extends ASerializableObject>
    extends ASerializableObjectLocalRepository<T> {
  HiveSerializedObjectRepository({required this.fromMap});

  Type get type => T;

  final T Function(Map<String, dynamic>) fromMap;

  String get boxName => type.toString().toLowerCase();

  Future<Box<String>> get box => Hive.openBox<String>(boxName);

  @override
  Future<void> create(T item) async {
    var b = await box;
    await b.put(item.id, jsonEncode(item.toMap()));
  }

  @override
  Future<void> delete(T item) async {
    var b = await box;
    b.delete(item.id);
  }

  @override
  Future<List<T>> getAll() async {
    var b = await box;
    List<T> list = [];
    for(var v in b.values){
      list.add(fromMap(jsonDecode(v)));
    }
    //log('getAllCount:'+list.length.toString());
    return list;
  }

  @override
  Future<T?> getById(id) async {
    var b = await box;
    var m = b.get(id);

    if (m == null) return null;
    //log('get:'+m);
    return fromMap(jsonDecode(m));
  }

  @override
  Future<void> update(T item) async {
    var b = await box;
    b.put(item.id, jsonEncode(item.toMap()));
  }


  Future deleteBox() async {
    var b = await box;
    b.deleteFromDisk();
  }
}
