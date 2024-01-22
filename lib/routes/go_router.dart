import 'dart:ffi';

import 'package:ecommerce/views/Authscreen/login.dart';
import 'package:ecommerce/views/Authscreen/sign.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
      name: "login",
      path: "/",
      pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
    ),

    GoRoute(
      name: "signup",
      path: "/signup",
      pageBuilder: (context, state) => const MaterialPage(child: SignUp()),
    ),
    // GoRoute(
    //   path: "/signup",
    //   builder: (context, state) => const SignUp(),
    // ),
  ]);
  // static GoRouter get router =>_router;

  // static Void setupRouter(){
  // _router;

  // }
}
