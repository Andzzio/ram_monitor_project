import 'package:flutter/material.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';
import 'package:ram_monitor_app/presentation/widgets/available_widget.dart';
import 'package:ram_monitor_app/presentation/widgets/memory_used_card.dart';
import 'package:ram_monitor_app/presentation/widgets/total_card.dart';

class BodySide extends StatelessWidget {
  final RamEntity ramInfo;
  const BodySide({super.key, required this.ramInfo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            MemoryUsedCard(ramInfo: ramInfo),
            SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  TotalCard(ramInfo: ramInfo),
                  SizedBox(height: 20),
                  AvailableWidget(ramInfo: ramInfo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
