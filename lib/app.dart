import 'package:flutter/material.dart';
import 'package:task_one_2025/routes/app_routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Task Authentications ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Raleway"),
      initialRoute: AppRouters.initRoute,
      routes: AppRouters.routes,
    );
  }
}
