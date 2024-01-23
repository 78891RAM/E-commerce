import 'package:ecommerce/routes/go_router.dart';
import 'package:ecommerce/views/otpscreen/location/selectlocation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';

import 'cubit/cubit/location_cubit.dart';
import 'views/otpscreen/location/try.dart';

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
      home: BlocProvider(
        create: (context) =>
            LocationCubit(), // Create an instance of LocationCubit
        child: ChooseLocationScreen(),
      ),

      // home: const MyHomePage(),

      // routerConfig: AppRouter().router,
      // routeInformationParser: AppRouter().router.routeInformationParser,
      // routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
