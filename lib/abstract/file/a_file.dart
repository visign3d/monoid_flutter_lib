import 'dart:io';

import '../model/a_object.dart';



abstract class AFile extends AObject<AFile> {
  AFile({required this.file, required super.id});

  final File file;
}
