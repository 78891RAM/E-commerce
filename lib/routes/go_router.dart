import 'dart:ffi';

import 'package:ecommerce/views/Authscreen/login.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const LoginScreen(),
    )
  ]);
  // static GoRouter get router =>_router;

  // static Void setupRouter(){
  // _router;

  // }
}
