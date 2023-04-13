import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../compontens/auth_form.dart';
import '../home_page.dart';
import '../register/model/auth.dart';
import '../register/splash_page.dart';

class AuthOrHomePage extends StatelessWidget {
  const AuthOrHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return auth.isAuth ? HomePage() : AuthForm();
  }
}
