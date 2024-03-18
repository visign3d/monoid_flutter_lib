

import '../../../../abstract/model/a_object.dart';

class MediaModel extends AObject {
  MediaModel({required super.id});






}


class MediaType extends AObject{
  MediaType({required this.name, required super.id});

  final String name;

  @override
  List<Object?> get props =>[name];



}
