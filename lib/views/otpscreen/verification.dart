// verification_page.dart
import 'package:ecommerce/views/otpscreen/numberverfication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../cubit/Numberverification_cubit.dart';
import 'location/selectlocation.dart';
import 'otpscreen.dart';

class VerificationPage extends StatelessWidget {
  final VerificationCubit cubit = VerificationCubit(3);

  VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        body: Column(
          children: [
            LinearProgressIndicator(
              value: cubit.state.currentStep / cubit.state.totalSteps,
              backgroundColor: Colors.grey[300],
            ),
            Expanded(
              child: PageView.builder(
                itemCount: cubit.state.totalSteps,
                controller:
                    PageController(initialPage: cubit.state.currentStep - 1),
                onPageChanged: (index) {
                  GoRouter.of(context).go("/location");
                  // Handle page change logic if needed
                },
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return const NumberVerificationScreen();
                    case 1:
                      return const OTPVerificationScreen();
                    case 2:
                      return const ChooseLocationScreen();
                    default:
                      return Container(); // Handle additional steps if needed
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class VerificationPage extends StatelessWidget {
//   const VerificationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Circular Indicator
//             Container(
//               width: 50,
//               height: 50,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.blue, // Change color based on your design
//               ),
//               child: Center(
//                 child: BlocBuilder<VerificationCubit, VerificationState>(
//                   builder: (context, state) {
//                     return Text(
//                       state.currentStep.toString(),
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Progress Bar
//             LinearProgressIndicator(
//               value: context.watch<VerificationCubit>().state.currentStep / 3,
//               backgroundColor: Colors.grey[300],
//             ),
//             Expanded(
//               child: PageView.builder(
//                 itemCount: 3,
//                 controller: PageController(initialPage: 0),
//                 onPageChanged: (value) => GoRouter.of(context).go("/location"),
//                 // onPageChanged: (index) {
//                 //   if (index + 1 >
//                 //       context.read<VerificationCubit>().state.currentStep) {
//                 //     context.read<VerificationCubit>().nextStep();
//                 //   } else if (index + 1 <
//                 //       context.read<VerificationCubit>().state.currentStep) {
//                 //     context.read<VerificationCubit>().previousStep();
//                 //   }
//                 // },
//                 itemBuilder: (context, index) {
//                   switch (index) {
//                     case 0:
//                       return const NumberVerificationScreen();
//                     case 1:
//                       return const OTPVerificationScreen();
//                     case 2:
//                       return const ChooseLocationScreen();
//                     default:
//                       return Container();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
