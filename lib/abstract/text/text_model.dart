

import '../model/a_object.dart';

class TextModel extends AObject<TextModel> {
  TextModel(
      {required this.textKey,
      required this.lang,
      required this.text,
      required super.id});

  final String text;

  final String lang;

  ///'text_key' lover case format with '\_' separator
  final String textKey;

  @override
  List<Object?> get props => [text, lang];
}
