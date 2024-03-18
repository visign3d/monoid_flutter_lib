import '../item_lib.dart';

class TextMedia extends AMedia {
  TextMedia(this.author, {this.title = '', this.text = const [], super.id = ''})
      : super(type: MediaType.text);

  ///author of text
  final String author;

  final String title;

  ///paragraphs
  final List<String> text;


}