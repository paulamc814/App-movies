import 'package:flutter/material.dart';

import 'package:flutter_application/router/app_routes.dart';
import 'package:flutter_application/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
 
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.getAppRoutes(),
      //si utilizamos una ruta que no existe salta esta
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}