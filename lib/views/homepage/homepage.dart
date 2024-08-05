import 'package:flutter/material.dart';
import 'package:resume_bulider/routes/app_routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.buidOptionPage);
        },
        child: Icon(Icons.add_circle_outline_sharp),
      ),
    );
  }
}
