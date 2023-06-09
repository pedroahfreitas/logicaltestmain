import 'package:flutter/material.dart';
import 'package:logicaltest/cadastro.dart';
import 'package:logicaltest/curiosidades.dart';
import 'package:logicaltest/home_page.dart';
import 'package:logicaltest/login.dart';
import 'package:logicaltest/register/splash_page.dart';
import 'package:logicaltest/register/staps/five_page.dart';
import 'package:logicaltest/register/staps/four_page.dart';
import 'package:logicaltest/register/staps/one_page.dart';
import 'package:logicaltest/register/staps/seven_page.dart';
import 'package:logicaltest/register/staps/six_page.dart';
import 'package:logicaltest/register/staps/two_page.dart';
import 'package:logicaltest/register/staps/three_page.dart';
import 'package:provider/provider.dart';

import 'pages/auth_or_home_page.dart';
import 'register/model/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MATH\'s',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => AuthOrHomePage(),
          //'/register': (context) => RegisterModel(),
          '/cadastro': (context) => AuthForm(),
          '/jogo1': (context) => OnePage(),
          '/jogo2': (context) => TwoPage(),
          '/jogo3': (context) => ThreePage(),
          '/jogo4': (context) => FourPage(),
          '/jogo5': (context) => FivePage(),
          '/jogo6': (context) => SixPage(),
          '/jogo7': (context) => SevenPage(),
          '/login': (context) => LoginPage(),
          'curiosidades': (context) => CuriosidadesPage(),
        },
      ),
    );

    //  MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'MATH\'s',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   routes: {
    //     '/': (context) => SplashPage(),
    //     '/home': (context) => HomePage(),
    //     //'/register': (context) => RegisterModel(),
    //     '/cadastro': (context) => AuthForm(),
    //     '/jogo1': (context) => OnePage(),
    //     '/jogo2': (context) => TwoPage(),
    //     '/jogo3': (context) => ThreePage(),
    //     '/jogo4': (context) => FourPage(),
    //     '/jogo5': (context) => FivePage(),
    //     '/jogo6': (context) => SixPage(),
    //     '/jogo7': (context) => SevenPage(),
    //     '/login': (context) => LoginPage(),

    //     'curiosidades': (context) => CuriosidadesPage(),
    //   },
    // ), );
  }
}
