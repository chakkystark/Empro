import 'package:Empro/CentralDatabase/notifiers.dart';
import 'package:Empro/HomePage/HomePage.dart';
import 'package:Empro/HomePage/pagecontroller.dart';
import 'package:Empro/HomePage/testing.dart';
import 'package:Empro/Registration/singup_page.dart';
import 'package:Empro/Registration/verifyOtp_page.dart';
import 'package:Empro/Widgets/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Registration/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SingleNotifier>(
          create: (context) => SingleNotifier(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent[700],
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
        routes: {
          VerifyOTP.routename: (ctx) => VerifyOTP(),
          SignUp.routename: (ctx) => SignUp(),
          HomePage.routename: (ctx) => HomePage(),
          // ConvexAppExample.routename: (ctx) => ConvexAppExample(),
          // MyPageView.routename: (ctx) => MyPageView(),
          MyBottomBarDemo.routename: (ctx) => MyBottomBarDemo(),
          QrCode.routename: (ctx) => QrCode(),
        },
      ),
    );
  }
}
