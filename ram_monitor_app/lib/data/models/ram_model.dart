import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

class RamModel {
  final int total;
  final int free;
  final int used;

  RamModel({required this.total, required this.free, required this.used});

  RamEntity toRamEntity() {
    return RamEntity(total: total, free: free, used: used);
  }
}
