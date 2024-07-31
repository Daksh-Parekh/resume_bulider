import 'package:flutter/material.dart';
import 'package:resume_bulider/views/buildoption/build_option.dart';
import 'package:resume_bulider/views/homepage/homepage.dart';

class AppRoutes {
  static String homePage = "/";
  static String buidOptionPage = "buid_options_page";

  static String iconPath = "lib/assets/icons/";
  static List<Map<String,dynamic>> allIcons = [
    {
      'icon' : "${iconPath}contact_detail-removebg-preview.png",
      'title': "Contact Info",
      'route': "contact_info_page",
    },
    {
      'icon' : "${iconPath}briefcase.png",
      'title': "Carrier Objective",
      'route': "carrier_objective_page",
    },
    {
      'icon' : "${iconPath}account.png",
      'title': "Personal Details",
      'route': "personal_details_page",
    },
    {
      'icon' : "${iconPath}graduation-cap.png",
      'title': "Education",
      'route': "education_page",
    },
    {
      'icon' : "${iconPath}logical-thinking.png",
      'title': "Expeiences",
      'route': "expeiences_page",
    },
    {
      'icon' : "${iconPath}certificate.png",
      'title': "Technical Skills",
      'route': "technical_skills_page",
    },
    {
      'icon' : "${iconPath}open-book.png",
      'title': "Interest/Hobbies",
      'route': "interest_hobbies_page",
    },
    {
      'icon' : "${iconPath}project-management.png",
      'title': "Projects",
      'route': "projects_page",
    },
    {
      'icon' : "${iconPath}experience.png",
      'title': "Achievements",
      'route': "achievements_page",
    },
    {
      'icon' : "${iconPath}handshake.png",
      'title': "References",
      'route': "references_page",
    },
    {
      'icon' : "${iconPath}declaration.png",
      'title': "Declaration",
      'route': "declaration_page",
    },
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    homePage: (context) => Homepage(),
    buidOptionPage: (context) => ButtonOptionPage()
  };
}