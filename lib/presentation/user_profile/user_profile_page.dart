import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/constants.dart';
import '../core/widgets/custom_text_button.dart';
import '../routes/router.gr.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            unauthenticated: (_) =>
                AutoRouter.of(context).replace(const SignInRoute()),
            orElse: () {});
      },
      child: Center(
        child: CustomTextButton(
          backgroundColor: kpurpleColor,
          primaryColor: klightPinkColor3,
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
