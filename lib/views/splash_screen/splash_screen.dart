import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_bulider/routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
        timer.cancel();
      },
    );

    // Future.delayed(
    //   Duration(seconds: 3),
    //   () {
    //     Navigator.pushNamed(context, AppRoutes.homePage);
    //   }
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // child: Image.asset('lib/assets/gif/Resume_folder.gif'),
        child: kIsWeb
            ? Image.asset('lib/assets/gif/Resume_folder.gif')
            : Image.network('lib/assets/gif/Resume_folder.gif'),
      ),
    );
  }
}
