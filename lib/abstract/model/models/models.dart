

import '../a_object.dart';

class LinkModel extends AObject<String> {
  const LinkModel({required super.id, required this.url});

  final String url;

  @override
  List<Object?> get props => [value];
}


class TextModel extends AObject<String> {
  const TextModel({required super.id, required this.text, required textKey, required lang});

  final String text;

  @override
  List<Object?> get props => [value];

  get lang => null;

  get textKey => null;
}






