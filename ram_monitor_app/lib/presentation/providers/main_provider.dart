import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';
import 'package:ram_monitor_app/domain/repositories/ram_repository.dart';

class MainProvider extends ChangeNotifier {
  final RamRepository repository;
  RamEntity? ramInfo;
  Timer? _timer;

  MainProvider({required this.repository});

  void monitoringRam() {
    _timer = Timer.periodic(Duration(milliseconds: 500), (timer) async {
      ramInfo = await repository.getRamInfo();
      notifyListeners();
    });
  }

  void stopMonitoringRam() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    stopMonitoringRam();
    super.dispose();
  }
}
