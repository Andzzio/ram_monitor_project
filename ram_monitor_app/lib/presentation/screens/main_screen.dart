import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ram_monitor_app/presentation/providers/main_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MainProvider>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total: ${provider.ramInfo?.total}"),
            Text("Free: ${provider.ramInfo?.free}"),
            Text("Used: ${provider.ramInfo?.used}"),
          ],
        ),
      ),
    );
  }
}
