import 'dart:ffi';
import 'package:ram_monitor_app/data/models/ram_model.dart';
import 'package:ram_monitor_app/domain/datasources/datasource.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';
import 'package:ram_monitor_app/shared/ram_monitor.dart';

class CppDatasource implements Datasource {
  @override
  Future<RamEntity> getRamInfo() async {
    final RamMonitor nlib = RamMonitor(
      DynamicLibrary.open("libram_manager.so"),
    );
    final ramInfo = nlib.get_ram_info();
    final RamModel ramModel = RamModel(
      total: ramInfo.total,
      free: ramInfo.free,
      used: ramInfo.used,
    );
    return ramModel.toRamEntity();
  }
}
