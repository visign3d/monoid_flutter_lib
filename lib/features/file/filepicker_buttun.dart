import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FilePickerButton extends StatelessWidget {
  const FilePickerButton({super.key, required this.onPick});

  final Function(File?) onPick;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: pickFile,
      icon: const Icon(Icons.file_open_outlined),
    );
  }

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      onPick(file);
    } else {
      onPick(null);
    }
  }
}
