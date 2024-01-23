import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../contants/colorpalete.dart';
import '../../cubit/Numberverification_cubit.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
      ),
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
