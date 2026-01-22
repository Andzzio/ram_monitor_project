import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ram_monitor_app/presentation/providers/main_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MainProvider>();
    final ramInfo = provider.ramInfo;
    return Scaffold(
      body: Center(
        child: (ramInfo == null)
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total: ${ramInfo.total} GB"),
                  Text("Free: ${ramInfo.free} GB"),
                  Text("Used: ${ramInfo.used} GB"),
                  Text("Percentage: ${ramInfo.getUsedPercentage()}"),
                ],
              ),
      ),
    );
  }
}
