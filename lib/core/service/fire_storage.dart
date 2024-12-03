import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruit_hub_dashboart/core/service/storage_service.dart';
import 'package:path/path.dart' as b;

class FireStorageService implements StorageService {
  final storageRef = FirebaseStorage.instance.ref();

  @override
  Future<String> uploadImage({required File file, required String pass}) async {
    String fileName = b.basename(file.path);
    String fileExtension = b.extension(file.path);
    var fileRef = storageRef.child("$pass/$fileName.$fileExtension");
    await fileRef.putFile(file);
    var fileUrl = await fileRef.getDownloadURL();
    return fileUrl;
  }
}
