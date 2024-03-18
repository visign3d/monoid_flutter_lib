

import '../model/a_object.dart';

abstract class ATag extends AObject<ATag>{
  ATag({required this.name, required super.id});

  final String name;

}