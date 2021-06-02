import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:wabi_sabi_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../core/constants.dart';
import '../widgets/custom_text_button.dart';

class SignInFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.fromLTRB(appPadding, 0, appPadding, appPadding),
          child: Form(
            autovalidateMode: state.showError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: appPadding),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          signInUpText,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceBetweenWidgets,
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
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
                verticalSpaceBetweenWidgets,
                TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    autocorrect: false,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
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
                verticalSpaceBetweenWidgets,
                verticalSpaceBetweenWidgets,
                Row(
                  children: [
                    Expanded(
                      child: CustomTextButton(
                        onPressed: () {
                          context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                        },
                        child: const Text('Sign In'),
                      ),
                    ),
                    horizontalSpaceBetweenWidgets,
                    Expanded(
                      child: CustomTextButton(
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
                verticalSpaceBetweenWidgets,
                verticalSpaceBetweenWidgets,
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      color: lightPinkColor,
                    )),
                    horizontalSpaceBetweenWidgets,
                    Text(
                      'Or',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    ),
                    horizontalSpaceBetweenWidgets,
                    const Expanded(
                        child: Divider(
                      color: lightPinkColor,
                    )),
                  ],
                ),
                verticalSpaceBetweenWidgets,
                verticalSpaceBetweenWidgets,
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
          ),
        );
      },
    );
  }
}
