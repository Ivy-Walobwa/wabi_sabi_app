import 'package:auto_route/annotations.dart';

import '../presentation.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignInPage,),

],)
class $WabiRouter{
  
}