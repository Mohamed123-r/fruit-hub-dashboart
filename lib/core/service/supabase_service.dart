import 'dart:io';

import 'package:fruit_hub_dashboart/core/service/bloc_opesever.dart';
import 'package:fruit_hub_dashboart/core/service/storage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/keys.dart';
import 'package:path/path.dart' as b;

class SupabaseService implements StorageService {
  static late Supabase _supabase;

  static createBucketSupabase({required String bucketName}) async {
    var buckets = await _supabase.client.storage.listBuckets();
    bool isBuketCreate = false;

    for (var bucket in buckets) {
      if (bucket == bucketName) {
        isBuketCreate = true;
        break;
      }
    }

    if (!isBuketCreate) {
      await _supabase.client.storage.createBucket(bucketName);
    }
  }

  static initializeSupabase() async {
    _supabase = await Supabase.initialize(
      url: kSupebaseUrl,
      anonKey: kSupebaseAnonKey,
    );
  }

  @override
  Future<String> uploadImage({required File file, required String pass}) async {
    String fileName = b.basename(file.path);
    String fileExtension = b.extension(file.path);
    var result = await _supabase.client.storage
        .from('fruits_images')
        .upload("$pass/$fileName.$fileExtension", file);

    final String publicUrl = _supabase.client
        .storage
        .from('fruits_images')
        .getPublicUrl("$pass/$fileName.$fileExtension");
    logger.i(publicUrl);
    return result;
  }
}
