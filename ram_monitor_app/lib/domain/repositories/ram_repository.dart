import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

abstract class RamRepository {
  Future<RamEntity> getRamInfo();
}
