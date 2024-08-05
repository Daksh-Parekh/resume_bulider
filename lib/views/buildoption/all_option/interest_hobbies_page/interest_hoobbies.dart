import 'package:flutter/material.dart';

class InterestHobbies extends StatefulWidget {
  const InterestHobbies({super.key});

  @override
  State<InterestHobbies> createState() => _InterestHobbiesState();
}

class _InterestHobbiesState extends State<InterestHobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interest/Hobbies"),
      ),
    );
  }
}
