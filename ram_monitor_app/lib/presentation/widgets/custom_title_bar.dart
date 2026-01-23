import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class CustomTitleBar extends StatelessWidget {
  const CustomTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DragToMoveArea(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFF1F2838), width: 3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.memory, size: 15, color: Color(0xFF3D81F6)),
              SizedBox(width: 10),
              Text(
                "RAM Monitor V1.0",
                style: TextStyle(
                  color: Color(0xFF495669),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                hoverColor: Colors.greenAccent,
                constraints: BoxConstraints(),
                onPressed: () {
                  windowManager.minimize();
                },
                icon: Icon(Icons.circle, color: Color(0xFF495669), size: 20),
              ),
              SizedBox(width: 5),
              IconButton(
                padding: EdgeInsets.zero,
                hoverColor: Colors.orangeAccent,
                constraints: BoxConstraints(),
                onPressed: () {
                  windowManager.maximize();
                },
                icon: Icon(Icons.circle, color: Color(0xFF495669), size: 20),
              ),
              SizedBox(width: 5),
              IconButton(
                padding: EdgeInsets.zero,
                hoverColor: Colors.white,
                constraints: BoxConstraints(),
                onPressed: () {
                  windowManager.close();
                },
                icon: Icon(Icons.circle, color: Color(0xFFC85E62), size: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
