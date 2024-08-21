import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/globals.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  List<String> availableLanguages = [
    'English',
    'Gujarati',
    'Hindi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Select your Gender",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              RadioListTile(
                title: Text("Male"),
                value: "Male",
                groupValue: Globals.gender,
                onChanged: (val) {
                  Globals.gender = val;
                  setState(() {});
                },
              ),
              RadioListTile(
                title: Text("Female"),
                value: "Female",
                groupValue: Globals.gender,
                onChanged: (val) {
                  Globals.gender = val;
                  setState(() {});
                },
              ),
              RadioListTile(
                title: Text("Others"),
                value: "Others",
                groupValue: Globals.gender,
                onChanged: (val) {
                  Globals.gender = val;
                  setState(() {});
                },
              ),
              Text(
                "Languages",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              // Checkbox(
              //   value: Globals.isChecked,
              //   onChanged: (val) {
              //     Globals.isChecked = val ?? false;
              //     setState(() {});
              //   },
              // ),

              ...availableLanguages.map(
                (e) => CheckboxListTile(
                  title: Text(e),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: Globals.languages.contains(e),
                  onChanged: (val) {
                    if (val!) {
                      Globals.languages.add(e);
                    } else {
                      Globals.languages.remove(e);
                    }
                    setState(() {});
                    // Globals.isChecked = val ?? false;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
