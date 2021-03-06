import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moi_movies/pages/home_page.dart';
import 'package:moi_movies/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moi_movies/utils/routes.dart';

    void main() {
      runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      Widget build(BuildContext context) {
        return MaterialApp(
          themeMode: ThemeMode.light,
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
            canvasColor: Colors.white,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.loginRoute,
          routes: {
          MyRoutes.homeRoute : (context) => HomePage(),
          MyRoutes.loginRoute : (context) => LoginPage(),
          },
        );
      }
    }
