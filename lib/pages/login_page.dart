import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
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
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("LOGIN"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("User Login Tried");
                    },
                  ),
                ],
              )
              )
            ]
          ),
        ),
      ),
    );
  }
}
