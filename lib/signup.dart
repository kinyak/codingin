import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                  height: 150,
                  child: Image.asset("assets/logo/logo-only.png",
                    fit: BoxFit.contain,)
              ),
              TextField(
                decoration: InputDecoration(
                    label:  Text("Fullname"),
                    fillColor: Color(0xFFEDEDED),
                    border: InputBorder.none,
                    filled:  true
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                decoration: InputDecoration(
                    label:  Text("Email"),
                    fillColor: Color(0xFFEDEDED),
                    border: InputBorder.none,
                    filled:  true
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    label:  Text("Password"),
                    fillColor: Color(0xFFEDEDED),
                    border: InputBorder.none,
                    filled:  true,
                    suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey[500],))
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: ()=>Navigator.pushNamed(context, '/home'),
                  child: Text("Log In",
                    style: TextStyle(color: Colors.white),),
                  style:  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color(0xFFEE5F5F),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      )
                  ),
                ),
              ),
              SizedBox(height: 12,),
              TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?", style: TextStyle(color: Colors.blue),)
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 1,
                      color: Colors.amber,
                    ),
                  ),
                  Text("or", style: TextStyle(color: Color(0xFFEE5F5F)),),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 1,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Image.asset("assets/icons/fb.png"),
                      Text("Log In with Facebook",
                        style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  style:  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color(0xFF0082CD),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      )
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Image.asset("assets/icons/google.png"),
                      Text("Log In with Google", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  style:  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color(0xFFF6F7FA),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                      )
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dengan mendaftar, Anda menerima',
                        style: TextStyle(color: Colors.black54)),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Ketentuan Layanan',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: ' dan '),
                          TextSpan(
                            text: 'Kebijakan Privasi',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: TextStyle(color: Colors.black54),),
                  TextButton(
                      onPressed: () {},
                      child: Text("Sign Up"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
