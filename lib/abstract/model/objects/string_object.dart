

import '../a_object.dart';

class StringObject extends AObject<String>{
  StringObject({required super.id,super.value});

  @override
  List<Object?> get props => [id,value];



}