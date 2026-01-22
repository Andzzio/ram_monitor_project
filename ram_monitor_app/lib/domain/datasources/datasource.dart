import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

abstract class Datasource {
  Future<RamEntity> getRamInfo();
}
