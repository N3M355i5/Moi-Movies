import 'package:flutter/material.dart';
import 'package:moi_movies/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moi Movies"),
      ),
      body: Material(
        child: Center(
          child: Container(
            child: Column(children: [
              Text("Welcome to the next generation of Bingiing!"),
              ElevatedButton(
                  child: Text("Go Back SIMON!"),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  }
                )
            ],)
            )
          ),
      ),
      drawer: Drawer(),
    );
  }
}
