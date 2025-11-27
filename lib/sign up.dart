import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),SizedBox(height: 10,),
          Center(child: Text("Create an account,It's a free",style: TextStyle(color: Colors.black,fontSize: 20),))
        ],
      ),
    );
  }
}
