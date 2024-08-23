import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/extension.dart';
import 'package:resume_bulider/utils/globals.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({super.key});

  @override
  State<TechnicalSkills> createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  List<TextEditingController> allControllers = [];

  @override
  void initState() {
    if (Globals.technicalSkills.isEmpty) {
      allControllers = List.generate(
        2,
        (index) => TextEditingController(),
      );
    } else if (Globals.technicalSkills.length < 2) {
      Globals.technicalSkills.forEach(
        (e) => allControllers.add(
          TextEditingController(text: e),
        ),
      );
      allControllers.add(
        TextEditingController(),
      );
    } else {
      Globals.technicalSkills.forEach(
        (e) => allControllers.add(
          TextEditingController(text: e),
        ),
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    Globals.technicalSkills.clear();
    for (int i = 0; i < allControllers.length; i++) {
      if (allControllers[i].text.isNotEmpty) {
        Globals.technicalSkills.add(allControllers[i].text);
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Technical Skills"),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enter your Skills",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: List.generate(
                    allControllers.length,
                    (index) => Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: allControllers[index],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            allControllers[index].clear();
                            allControllers.removeAt(index);
                            setState(() {});
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
                20.h,
                ElevatedButton.icon(
                  onPressed: () {
                    allControllers.add(
                      TextEditingController(),
                    );
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
