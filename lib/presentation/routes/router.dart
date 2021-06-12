import 'package:auto_route/annotations.dart';

import '../auth/sign_in_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
  AutoRoute(page: SignInPage, initial: true),

],)
class $Router{
  
}