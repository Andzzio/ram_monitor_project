import 'package:flutter/material.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

class AvailableWidget extends StatelessWidget {
  final RamEntity ramInfo;
  const AvailableWidget({super.key, required this.ramInfo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF1F2838),
          borderRadius: BorderRadius.circular(20),
          border: Border(left: BorderSide(color: Color(0xFF17B880), width: 3)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AVAILABLE",
                style: TextStyle(
                  color: Color(0xFF17B880),
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "${ramInfo.free} GB",
                style: TextStyle(color: Colors.white, fontSize: 21),
              ),
              Spacer(),
              LinearProgressIndicator(
                value: double.parse(ramInfo.getUsedPercentage()) / 100,
                color: Color(0xFF17B880),
                borderRadius: BorderRadius.circular(10),
                backgroundColor: Color(0xFF232D3D),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
