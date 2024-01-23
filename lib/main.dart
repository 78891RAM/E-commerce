import 'package:ecommerce/views/otpscreen/numberverfication.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GeocodingPlatform.instance.init();
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
      // home: ChooseLocationScreen(),
      // home: BlocProvider(
      //   create: (context) =>
      //       LocationCubit(), // Create an instance of LocationCubit
      //   child: ChooseLocationScreen(),
      // ),

      home: NumberVerificationScreen(),
      // home: const MyHomePage(),

      // routerConfig: AppRouter().router,
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
