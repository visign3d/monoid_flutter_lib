

//todo test graph_model


import '../../abstract_lib.dart';

class GraphModel extends AObject<GraphModel> {
  GraphModel({required super.id});

  GM get map => Graph.map;

  ///update value on key
  ///
  /// create value on key
  updateValue(GraphObject object) {}

  GraphObject? getValue(GraphKey key) {
    GM map = {};

    if(key.key.isEmpty){
      return null;
    }

    ///todo access map from nested key list
    for (var k in key.key) {
      if (map.isEmpty) {
        //map.assign(k, map[k]);
        continue;
      }
      if (map[k].isBlank) return GraphObject.fromMap(map);
      map = map[k];
    }

    return GraphObject.fromMap(map);
  }

  ///update property on key
  ///
  ///or, create property on key
  updateProperty(GraphObject property) {
    map[property.key.key.last] = property.object;
  }

  @override
  List<Object?> get props => [map];
}

///graph property
///
/// type,key,
class GraphObject extends ASerializableObject<GraphObject> {
  ///
  GraphKey key;

  ///
  String type;

  ///
  String? title;

  ///
  dynamic object;

  ///list of related objects
  List<GraphObject> linkedObjects = [];

  propertiesToMap() {}

  factory GraphObject.fromMap(GM map) {
    return GraphObject(
        title: map['title'],
        key: map['key'],
        type: map['type'],
        id: map['id'],
        object: map['object']);
  }

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
      'key': key.key,
      'object': object,
      'linkedObjects': linkedObjects.map((e) => e.id).toList()
    };
  }

  GraphObject(
      {this.object,
      this.title,
      required this.key,
      required this.type,
      required super.id});
}

class Graph {
  Graph._();

  static GM map = {};
}

///Graph Map type definition
typedef GM = Map<String, dynamic>;

/// { key1:
///      key2:
///          key3: value }
///
/// Nested Map keys :
/// List<String>(['key1','key2','key3',. . .])
class GraphKey {
  const GraphKey(this.key);

  final List<String> key;
}
