import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../core/constants.dart';
fiximport '../../core/widgets/custom_text_button.dart';
import '../../routes/router.gr.dart';

class SignInFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () => null,
            (some) => some.fold(
                    (failure) => {
                          showTopSnackBar(
                            context,
                            CustomSnackBar.error(
                                message: failure.map(
                                    cancelledByUser: (_) => 'Cancelled',
                                    serverError: (_) => 'Server Error',
                                    emailAlreadyInUse: (_) =>
                                        'Email already in use',
                                    invalidEmailAndPasswordCombination: (_) =>
                                        'Invalid Email and Password Combination')),
                          )
                        }, (_) {
              AutoRouter.of(context).navigate(const TabView());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());

            }));
      },
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.fromLTRB(kappPadding, 0, kappPadding, kappPadding),
          child: Form(
            autovalidateMode: state.showError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: kappPadding),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          ksignInUpText,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ),
                kverticalSpaceBetweenWidgets,
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value.trim())),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (l) => l.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null),
                          (_) => null),
                ),
                kverticalSpaceBetweenWidgets,
                TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    autocorrect: false,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value.trim())),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                            (l) => l.maybeMap(
                                shortPassword: (_) => 'Password too short',
                                orElse: () => null),
                            (_) => null)),
                kverticalSpaceBetweenWidgets,
                kverticalSpaceBetweenWidgets,
                if (state.isSubmitting) const LinearProgressIndicator(
                ) else Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextButton(
                            backgroundColor: klightPinkColor1,
                            primaryColor: kpurpleColor,
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .signInWithEmailAndPasswordPressed(),
                                  );
                            },
                            child: const Text('Sign In'),
                          ),
                        ),
                        khorizontalSpaceBetweenWidgets,
                        Expanded(
                          child: CustomTextButton(
                            backgroundColor: klightPinkColor1,
                            primaryColor: kpurpleColor,
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .registerWithEmailAndPasswordPressed(),
                                  );
                            },
                            child: const Text('Sign Up'),
                          ),
                        ),
                      ],
                    ),
                    kverticalSpaceBetweenWidgets,
                    kverticalSpaceBetweenWidgets,
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                              color: klightPinkColor1,
                            )),
                        khorizontalSpaceBetweenWidgets,
                        Text(
                          'Or',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white),
                        ),
                        khorizontalSpaceBetweenWidgets,
                        const Expanded(
                            child: Divider(
                              color: klightPinkColor1,
                            )),
                      ],
                    ),
                    kverticalSpaceBetweenWidgets,
                    kverticalSpaceBetweenWidgets,
                    SignInButton(
                      Buttons.Google,
                      text: "Continue with Google",
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithGooglePressed(),
                        );
                      },
                      padding: const EdgeInsets.all(8),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    )
                  ],
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
