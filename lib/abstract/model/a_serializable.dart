

import 'a_object.dart';

mixin ASerializable<T> {
  T fromMap(Map<String, dynamic> map);

  Map<String, dynamic> toMap();
}

abstract class ASerializableObject<T> extends AObject {
  const ASerializableObject({required super.id});

  //T fromMap(Map<String, dynamic> map);

  Map<String, dynamic> toMap();

 

}
