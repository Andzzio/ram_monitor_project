import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ram_monitor_app/presentation/providers/main_provider.dart';
import 'package:ram_monitor_app/presentation/widgets/body_side.dart';
import 'package:ram_monitor_app/presentation/widgets/custom_title_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MainProvider>();
    final ramInfo = provider.ramInfo;
    return Scaffold(
      body: Column(
        children: [
          CustomTitleBar(),
          BodySide(ramInfo: ramInfo!),
        ],
      ),
    );
  }
}
