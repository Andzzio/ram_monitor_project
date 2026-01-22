import 'package:ram_monitor_app/domain/datasources/datasource.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';
import 'package:ram_monitor_app/domain/repositories/ram_repository.dart';

class RamRepositoryImpl implements RamRepository {
  final Datasource datasource;

  RamRepositoryImpl({required this.datasource});

  @override
  Future<RamEntity> getRamInfo() async {
    return datasource.getRamInfo();
  }
}
