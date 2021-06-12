import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wabi_sabi_app/presentation/auth/widgets/clip_path.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injection.dart';
import '../core/constants.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/sign_in_form_widget.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kpurpleColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.3),
        child: Stack(
          children: [
            ClipPath(
              clipper: CustomAppBarClipper(),
              child: const CustomAppBar(),
            ),
            const Positioned(
                left: 10,
                top: 20,
                child: CircleAvatar(
                  backgroundColor: kpurpleColor,
                )),
            const Positioned(
                right: 50,
                top: 100,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: kpurpleColor,
                )),
            const Positioned(
                left: 50,
                bottom: 100,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: kpurpleColor,
                )),
            const Positioned(
                bottom: 50,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: kpurpleColor,
                )),
          ],
        ),
      ),
      body: BlocProvider(
        create: (ctx) => getIt<SignInFormBloc>(),
        child: SignInFormWidget(),
      ),
    );
  }
}
