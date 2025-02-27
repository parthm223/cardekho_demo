import 'package:cardekho_demo/binding/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CarDekho',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialBinding: InitialBinding(),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
    );
  }
}

