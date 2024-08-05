import 'package:flutter/material.dart';

class Achivement extends StatefulWidget {
  const Achivement({super.key});

  @override
  State<Achivement> createState() => _AchivementState();
}

class _AchivementState extends State<Achivement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Achivement"),
      ),
    );
  }
}
