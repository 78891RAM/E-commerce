import 'package:ecommerce/routes/go_router.dart';
import 'package:ecommerce/views/otpscreen/location/selectlocation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute:ChooseLocationScreen() ,
      home: const ChooseLocationScreen(),

      // routerConfig: AppRouter().router,
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
