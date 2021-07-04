import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../core/constants.dart';
import '../routes/router.gr.dart';

import 'clippers/clippers.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state){
        state.map(initial: (_){

        }, authenticated: (_){
          AutoRouter.of(context).replace(const TabView());

        }, unauthenticated: (_){
          AutoRouter.of(context).replace(const SignInRoute());

        });
      },
      child: Scaffold(
        backgroundColor: kpurpleColor,
        body: Stack(
          children: [
             Positioned(
              top: height*0.1,
                 left: width*0.1,
                child: const CircleAvatar(
              backgroundColor: klightPinkColor1,
            )),
             Positioned(
              bottom: height*0.4,
                 right: width*0.2,
                child: const CircleAvatar(
                  radius: 10,
              backgroundColor: klightPinkColor1,
            )),

            Align(
              alignment: const Alignment(30, -1),
              child: ClipPath(
                clipper: TopRightClipperDown(),
                child: Container(
                  width: width * 0.99,
                  color: kdarkerPinkColor,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(30, -1),
              child: ClipPath(
                clipper: TopRightClipperUp(),
                child: Container(
                  width: width * 0.98,
                  color: klightPinkColor1,
                ),
              ),
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Wabi',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontFamily: 'Rancho', fontSize: 60),
                  ),
                  Text(
                    'Sabi',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontFamily: 'Rancho', fontSize: 90),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 70.5),
              child: ClipPath(
                clipper: BottomLeftClipperDown(),
                child: Container(
                  height: height * 0.99,
                  color: kdarkerPinkColor,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 120),
              child: ClipPath(
                clipper: BottomLeftClipperUp(),
                child: Container(
                  height: height * 0.99,
                  color: klightPinkColor1,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
