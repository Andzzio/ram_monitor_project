import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

class RamModel {
  final int total;
  final int free;
  final int used;

  RamModel({required this.total, required this.free, required this.used});

  RamEntity toRamEntity() {
    final String totalGB = (total / 1024 / 1024).toStringAsFixed(2);
    final String freeGB = (free / 1024 / 1024).toStringAsFixed(2);
    final String usedGB = (used / 1024 / 1024).toStringAsFixed(2);
    return RamEntity(total: totalGB, free: freeGB, used: usedGB);
  }
}
