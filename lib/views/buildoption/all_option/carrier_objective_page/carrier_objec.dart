import 'package:flutter/material.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({super.key});

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrier Objective"),
      ),
    );
  }
}
