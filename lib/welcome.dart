import 'package:flutter/material.dart';
import 'package:codingin/login.dart';


class welcome_view extends StatelessWidget {
  const welcome_view({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset("assets/logo/logo.png",
                fit: BoxFit.cover,),
              ),
              SizedBox(height: 70),
              Text("Welcome to Codingin",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text("Best and Popular apps for education course from home",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.grey,
              ),),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: ()=>Navigator.pushNamed(context, '/login'),
                    child: Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFFEC5F5F),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    )
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
