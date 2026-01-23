class RamEntity {
  final String total;
  final String free;
  final String used;

  RamEntity({required this.total, required this.free, required this.used});

  String getUsedPercentage() {
    final double value = (double.parse(used) / double.parse(total)) * 100;
    return value.toStringAsFixed(0);
  }
}
