import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseService {
  Reference get firebaseStorage => FirebaseStorage.instance.ref();

  /// /image.jpg
  Future<String> getImageURL(String imgName) async {
    var u = firebaseStorage.child(imgName);

    return await u.getDownloadURL();
  }

  Future uploadImage(String path) async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);

      if (result != null) {
        Uint8List uploadFile = result.files.first.bytes!;

        File file =
            File(result.files.first.name + '.' + result.files.first.extension!);
        file.writeAsBytesSync(uploadFile);
        uploadFileToStorage(file, path);
      }
    } catch (e) {
      print(e);
    }
  }

  uploadFileToStorage(File file, String path) {
    UploadTask task = firebaseStorage.child(path).putFile(file);
  }
}
