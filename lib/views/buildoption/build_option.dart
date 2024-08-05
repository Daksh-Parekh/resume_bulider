import 'package:flutter/material.dart';
import 'package:resume_bulider/routes/app_routes.dart';

class ButtonOptionPage extends StatefulWidget {
  const ButtonOptionPage({super.key});

  @override
  State<ButtonOptionPage> createState() => _ButtonOptionPageState();
}

class _ButtonOptionPageState extends State<ButtonOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Build Options"),
      ),
      body: Column(
        children: AppRoutes.allIcons
            .map(
              (e) => ListTile(
                leading: Image.asset(
                  e['icon'],
                  height: 30,
                ),
                title: Text(e['title']),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(e['route']);
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
