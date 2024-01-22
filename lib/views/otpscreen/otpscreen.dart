import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/Numberverification_cubit.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP Verification')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter the OTP received'),
            ElevatedButton(
              onPressed: () {
                context.read<VerificationCubit>().nextStep();
              },
              child: const Text('Next'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<VerificationCubit>().previousStep();
              },
              child: const Text('Previous'),
            ),
          ],
        ),
      ),
    );
  }
}
