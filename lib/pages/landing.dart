import 'package:flutter/material.dart';
import 'package:menu/database/auth/model.dart';
import 'package:menu/pages/auth_page.dart';
import 'package:menu/pages/home.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel = Provider.of<UserModel?>(context);
    final bool check = userModel != null;

    return check? const HomePage():const Authpage();
  }
}