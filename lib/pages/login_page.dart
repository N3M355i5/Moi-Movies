import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moi_movies/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

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
                  Text("Welcome Back  $name !",
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
                    // onChanged: (value) {
                    //   name = value;
                    //   setState(() {});
                    // },
                    onFieldSubmitted: (value) {
                      name = value;
                      changeButton = false;
                      setState(() {

                      });
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                        print(changeButton);
                      });
                      await Future.delayed(Duration(milliseconds: 800));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: changeButton? 50:150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton 
                          ? Icon(Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(
                            changeButton?50:8
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("LOGIN", style: TextStyle(
                  //     fontWeight: FontWeight.w400,
                  //   )),
                  //   // style: TextButton.styleFrom(
                  //   //   minimumSize: Size(150, 50),
                  //   //   backgroundColor: Colors.blue,
                  //   //
                  //   // ),
                  //   style: ButtonStyle(
                  //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //           RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(18.0),
                  //               side: BorderSide(color: Colors.red)
                  //           )
                  //       )
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //
                  // ),
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
