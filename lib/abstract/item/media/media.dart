

import '../../model/a_object.dart';

abstract class AMedia extends AObject {
  const AMedia({required this.type, required super.id});

  final AMediaType type;
}

abstract class AMediaType extends AObject {
  const AMediaType({required this.name, required super.id});

  ///name : snakeCase , example:  'geo_location'
  final String name;
}

class MediaType extends AMediaType {
  static AMediaType get text => MediaType._(name: 'text', id: '');

  static AMediaType get image => MediaType._(name: 'image', id: '');

  static AMediaType get url => MediaType._(name: 'url', id: '');

  static AMediaType get file => MediaType._(name: 'file', id: '');

  static AMediaType get script => MediaType._(name: 'script', id: '');

  MediaType._({required super.name, required super.id});

  ///any file extensions : jpg , txt , json , yaml ...
  FileExtension? fileExtension;
}

class FileExtension extends AObject {
  const FileExtension({super.id = ''});
}
