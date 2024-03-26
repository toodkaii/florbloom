import 'package:firebase_auth/firebase_auth.dart';
import 'package:florbloom_app/forgot_password.dart';
import 'package:florbloom_app/screens/home_screen.dart';
import 'package:florbloom_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SigninPages extends StatefulWidget {
  const SigninPages({super.key});

  @override
  State<SigninPages> createState() => _SigninPagesState();
}

class _SigninPagesState extends State<SigninPages> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  Color myColor = Color(0xFF534D50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(164, 159, 91, 1),
      ),
      backgroundColor: Color.fromRGBO(235, 236, 234, 1),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'InriaSerif',
                  color: (Color.fromRGBO(83, 77, 80, 1)),
                ),
              ),
            ),

            Spacer(
              flex: 2,
            ),
            TextField(
              controller: emailControl,
              decoration: const InputDecoration(
                  // hintText: 'กรุณากรอกอีเมล',
                  label: Text(
                    'Email',
                    style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                  ),
                  // fillColor: Colors.amber,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            Spacer(),
            TextField(
              controller: passwordControl,
              decoration: const InputDecoration(
                // hintText: 'กรุณากรอกรหัสผ่าน',
                label: Text(
                  'Password',
                  style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                ),
                // fillColor: Colors.grey,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 3,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: onPressedForgotPw,
                child: Text('Forgot your password?'),
                style: TextButton.styleFrom(
                  // primary: Colors.blue, เก่าแล้ว
                  foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'InriaSerif',
                    decoration: TextDecoration.underline,
                    decorationColor: (Color.fromRGBO(83, 77, 80, 1)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedSignin,
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'InriaSerif',
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(16),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 1, // ความสูงของเส้น
                    width: 90, // ความยาวของเส้น
                    color: (Color.fromRGBO(168, 170, 167, 1)),
                    // สีของเส้น
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'InriaSerif',
                        color: (Color.fromRGBO(168, 170, 167, 1)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 90,
                    color: (Color.fromRGBO(168, 170, 167, 1)),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedFacebook,
                child: Row(
                  children: [
                    Icon(Icons.facebook_rounded),
                    Text('Sign In with Facebook'),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromRGBO(60, 90, 153, 1),
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

            Spacer(
              flex: 1,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedGoogle,
                child: Row(
                  children: [
                    Icon(Icons.g_mobiledata_rounded),
                    Text('Sign In with Google'),
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet?",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'InriaSerif',
                    color: (Color.fromRGBO(168, 170, 167, 1)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: onPressedCreateAc,
                    child: Text('Create Account'),
                    style: TextButton.styleFrom(
                      // primary: Colors.blue, เก่าแล้ว
                      foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'InriaSerif',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 3,
            ),
            // OutlinedButton(
            //   onPressed: onPressedCreate,
            //   child: Text('สร้างบัญชีผู้ใช้งาน'),
            //   style: OutlinedButton.styleFrom(
            //     foregroundColor: Colors.black,
            //     textStyle: TextStyle(fontSize: 20),
            //     side: BorderSide(width: 1.0, color: Colors.black),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void onPressedForgotPw() {
    print('มีการกดปุ่มลืมรหัสผ่าน');
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ForgotPassword(),
    ));
  }

  void onPressedSignin() async {
    String email = emailControl.text;
    String pwd = passwordControl.text;

    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pwd);

      if (credential.user != null && credential.user!.uid != '') {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => HomePage(),
            fullscreenDialog: false,
          ),
          (route) => false,
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      print(e.code);
    }
  }

  void onPressedCreateAc() {
    print('สร้างบัญชีผู้ใช้งาน');
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => SignupPage(),
    ));
  }

  void onPressedFacebook() {}

  void onPressedGoogle() {}
}
