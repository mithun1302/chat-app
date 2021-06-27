

import 'package:hloapp_1/domain/repositories/firebase_repository.dart';

class GetCurrentUidUseCase{
  final FirebaseRepository repository;

  GetCurrentUidUseCase({this.repository});

  Future<String> call()async{
    return await repository.getCurrentUID();
  }
}