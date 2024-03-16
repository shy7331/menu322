import 'package:menu/pages/auth_page.dart';
import 'package:menu/pages/reg_page.dart';
import 'package:menu/pages/home.dart';
import 'package:menu/pages/landing.dart';

final routes = {
  '/':(context)=>const LandingPage(),
  '/auth': (context)=>const Authpage(),
  '/reg': (context)=>const RegistrationPage(),
  '/home': (context)=>const HomePage(),
};