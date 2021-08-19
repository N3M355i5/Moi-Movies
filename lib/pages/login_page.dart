import 'package:flutter/material.dart';
import 'package:moi_movies/utils/routes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset("assets/images/moviespopcornsoda_5.gif",
                  fit: BoxFit.cover,
                  height: 200,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32.0
                  ),
              child: Column(
                children: [
                  Text("Welcome Back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    child: Text("LOGIN", style: TextStyle(
                      fontWeight: FontWeight.w400,
                    )),
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 40),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              )
              )
            ]
          ),
        ),
      ),
    ),
    );
  }
}
