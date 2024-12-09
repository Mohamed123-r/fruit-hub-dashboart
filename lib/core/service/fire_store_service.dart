import 'package:cloud_firestore/cloud_firestore.dart';
import 'database_service.dart';

class FireStoreService extends DatabaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId == null) {
      await fireStore.collection(path).add(data);
    } else {
      await fireStore.collection(path).doc(documentId).set(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId}) async {
    var data = await fireStore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIfDocumentExists(
      {required String path, required String documentId}) async {
    var data = await fireStore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
