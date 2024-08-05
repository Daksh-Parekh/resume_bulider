import 'package:flutter/material.dart';
import 'package:resume_bulider/views/buildoption/all_option/achievements_page/achivement.dart';
import 'package:resume_bulider/views/buildoption/all_option/carrier_objective_page/carrier_objec.dart';
import 'package:resume_bulider/views/buildoption/all_option/contact_info_page/contact_info.dart';
import 'package:resume_bulider/views/buildoption/all_option/declaration_page/declaration.dart';
import 'package:resume_bulider/views/buildoption/all_option/education_page/education.dart';
import 'package:resume_bulider/views/buildoption/all_option/expeiences_page/experiences.dart';
import 'package:resume_bulider/views/buildoption/all_option/interest_hobbies_page/interest_hoobbies.dart';
import 'package:resume_bulider/views/buildoption/all_option/personal_detail_page/personal_detail.dart';
import 'package:resume_bulider/views/buildoption/all_option/projects_page/project.dart';
import 'package:resume_bulider/views/buildoption/all_option/references_page/references.dart';
import 'package:resume_bulider/views/buildoption/all_option/technical_skills_page/technical_skill.dart';
import 'package:resume_bulider/views/buildoption/build_option.dart';
import 'package:resume_bulider/views/homepage/homepage.dart';
import 'package:resume_bulider/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static String splashScreen = "/";
  static String homePage = "home_page";
  static String buidOptionPage = "buid_options_page";

  static String iconPath = "lib/assets/icons/";
  static List<Map<String, dynamic>> allIcons = [
    {
      'icon': "${iconPath}contact_detail-removebg-preview.png",
      'title': "Contact Info",
      'route': "contact_info_page",
    },
    {
      'icon': "${iconPath}briefcase.png",
      'title': "Carrier Objective",
      'route': "carrier_objective_page",
    },
    {
      'icon': "${iconPath}account.png",
      'title': "Personal Details",
      'route': "personal_details_page",
    },
    {
      'icon': "${iconPath}graduation-cap.png",
      'title': "Education",
      'route': "education_page",
    },
    {
      'icon': "${iconPath}logical-thinking.png",
      'title': "Experiences",
      'route': "experiences_page",
    },
    {
      'icon': "${iconPath}certificate.png",
      'title': "Technical Skills",
      'route': "technical_skills_page",
    },
    {
      'icon': "${iconPath}open-book.png",
      'title': "Interest/Hobbies",
      'route': "interest_hobbies_page",
    },
    {
      'icon': "${iconPath}project-management.png",
      'title': "Projects",
      'route': "projects_page",
    },
    {
      'icon': "${iconPath}experience.png",
      'title': "Achievements",
      'route': "achievements_page",
    },
    {
      'icon': "${iconPath}handshake.png",
      'title': "References",
      'route': "references_page",
    },
    {
      'icon': "${iconPath}declaration.png",
      'title': "Declaration",
      'route': "declaration_page",
    },
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => SplashScreen(),
    homePage: (context) => Homepage(),
    buidOptionPage: (context) => ButtonOptionPage(),
    allIcons[0]['route']: (context) => ContactInfo(),
    allIcons[1]['route']: (context) => CarrierObjective(),
    allIcons[2]['route']: (context) => PersonalDetails(),
    allIcons[3]['route']: (context) => Education(),
    allIcons[4]['route']: (context) => Experiences(),
    allIcons[5]['route']: (context) => TechnicalSkills(),
    allIcons[6]['route']: (context) => InterestHobbies(),
    allIcons[7]['route']: (context) => Projects(),
    allIcons[8]['route']: (context) => Achivement(),
    allIcons[9]['route']: (context) => References(),
    allIcons[10]['route']: (context) => Declaration(),
  };
}
