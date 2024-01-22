import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../cubit/Numberverification_cubit.dart';
import 'otpscreen.dart';

class NumberVerificationScreen extends StatelessWidget {
  const NumberVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Verification')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter your phone number'),
            ElevatedButton(
              onPressed: () {
                context.read<VerificationCubit>().nextStep();
                GoRouter.of(context).go("/location");
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
