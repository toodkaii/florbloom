import 'package:florbloom_app/signin.dart';
import 'package:florbloom_app/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(164, 159, 91, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, 0, 0, 30), // ระยะห่างบน 10 หน่วย, ระยะห่างล่าง 20 หน่วย
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/images/logo_florbloom.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: onPressedSignin,
                          child: Row(
                            children: [
                              Text('Sign In'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                            backgroundColor: Colors.white,
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'InriaSerif',
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                      SizedBox(width: 12), // Add some spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          onPressed: onPressedRegister,
                          child: Row(
                            children: [
                              Text('Register'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                            backgroundColor: Colors.white,
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'InriaSerif',
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: onPressedGoogle,
                      child: Row(
                        children: [
                          Icon(Icons.g_mobiledata_rounded),
                          Text('Sign Up with Google'),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'InriaSerif',
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: onPressedFacebook,
                      child: Row(
                        children: [
                          Icon(Icons.facebook),
                          Text('Sign Up with Facebook'),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                        backgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'InriaSerif',
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressedSignin() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SigninPages(),
    ));
  }

  void onPressedRegister() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SignupPage(),
    ));
  }

  void onPressedGoogle() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SigninPages(),
    ));
  }

  void onPressedFacebook() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SigninPages(),
    ));
  }
}
