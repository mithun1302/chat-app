

import 'package:hloapp_1/data/datasource/local_datasource/local_datasource.dart';
import 'package:hloapp_1/domain/entities/contact_entity.dart';
import 'package:hloapp_1/domain/repositories/get_device_number_repository.dart';

class GetDeviceNumberRepositoryImpl implements GetDeviceNumberRepository{
  final LocalDataSource localDataSource;

  GetDeviceNumberRepositoryImpl({this.localDataSource});
  @override
  Future<List<ContactEntity>> getDeviceNumbers() {
    return localDataSource.getDeviceNumbers();
  }

}