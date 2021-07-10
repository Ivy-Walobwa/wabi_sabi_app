import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/constants.dart';
import '../core/widgets/custom_text_button.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomTextButton(
        backgroundColor: kpurpleColor,
        primaryColor: klightPinkColor3,
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.signedOut());
        },
        child: const Text('Logout'),
      ),
    );
  }
}
