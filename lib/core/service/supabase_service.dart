import 'dart:ffi';
import 'dart:io';

import 'package:fruit_hub_dashboart/core/service/storage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/keys.dart';

class SupabaseService implements StorageService {

  static late Supabase _supabase;

  static initializeSupabase() async {
    _supabase = await Supabase.initialize(
      url: kSupebaseUrl,
      anonKey: kSupebaseAnonKey,
    );
  }

  @override
  Future<String> uploadImage({required File file, required String pass}) {
    // TODO: implement uploadImage
    throw UnimplementedError();
  }
}