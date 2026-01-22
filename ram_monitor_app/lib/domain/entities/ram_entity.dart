class RamEntity {
  final int total;
  final int free;
  final int used;

  RamEntity({required this.total, required this.free, required this.used});

  String getUsedPercentage() {
    final double value = (used / total) * 100;
    return "${value.toStringAsFixed(2)} %";
  }
}
