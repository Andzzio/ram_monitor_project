import 'package:flutter/material.dart';
import 'package:ram_monitor_app/domain/entities/ram_entity.dart';

class MemoryUsedCard extends StatelessWidget {
  final RamEntity ramInfo;
  const MemoryUsedCard({super.key, required this.ramInfo});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1F2838),
          border: Border.all(color: Color(0xFF293241), width: 3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: size.width * 0.39,
                      height: size.height * 0.39,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1F2838),
                          border: Border.all(
                            color: Color(0xFF293241),
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.245,
                      height: size.height * 0.37,
                      child: CircularProgressIndicator(
                        value: double.parse(ramInfo.getUsedPercentage()) / 100,
                        strokeWidth: 10,
                        color: Color(0xFF3D81F6),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              ramInfo.getUsedPercentage(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "%",
                              style: TextStyle(
                                color: Color(0xFF8B9099),
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "PERCENTAGE USED",
                          style: TextStyle(
                            color: Color(0xFF8B9099),
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    "${ramInfo.used} GB",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF3D81F6),
                    ),
                  ),
                  Text(
                    "MEMORY USED",
                    style: TextStyle(
                      color: Color(0xFF8B9099),
                      fontSize: 10,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
