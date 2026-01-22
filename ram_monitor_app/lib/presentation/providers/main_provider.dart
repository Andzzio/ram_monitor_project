import 'package:flutter/material.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';
import 'package:ram_monitor_app/domain/repositories/ram_repository.dart';

class MainProvider extends ChangeNotifier {
  final RamRepository repository;
  RamEntity? ramInfo;
  MainProvider({required this.repository});

  Future<void> loadRamInfo() async {
    ramInfo = await repository.getRamInfo();
    notifyListeners();
  }
}
