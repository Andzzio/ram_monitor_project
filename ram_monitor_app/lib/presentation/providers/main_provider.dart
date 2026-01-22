import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ram_monitor_app/data/ram_monitor.dart';

class MainProvider extends ChangeNotifier {
  final nlib = RamMonitor(DynamicLibrary.open("libram_manager.so"));
}
