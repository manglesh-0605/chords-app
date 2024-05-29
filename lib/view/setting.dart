import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Settings"),
      ),
    );
  }
}
