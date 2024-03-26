import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:florbloom_app/signin.dart';
import 'package:flutter/widgets.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  TextEditingController confirmpasswordControl = TextEditingController();
  TextEditingController firstnameControl = TextEditingController();
  TextEditingController lastnameControl = TextEditingController();
  TextEditingController ageControl = TextEditingController();

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
                'Register',
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
              controller: firstnameControl,
              decoration: const InputDecoration(
                  // hintText: 'กรุณากรอกอีเมล',
                  label: Text(
                    'First name',
                    style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                  ),
                  // fillColor: Colors.amber,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            Spacer(),
            TextField(
              controller: lastnameControl,
              decoration: const InputDecoration(
                  // hintText: 'กรุณากรอกอีเมล',
                  label: Text(
                    'Last name',
                    style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                  ),
                  // fillColor: Colors.amber,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            Spacer(),
            TextField(
              controller: ageControl,
              decoration: const InputDecoration(
                  // hintText: 'กรุณากรอกอีเมล',
                  label: Text(
                    'Age',
                    style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                  ),
                  // fillColor: Colors.amber,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            Spacer(),
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
            Spacer(),
            TextField(
              controller: confirmpasswordControl,
              decoration: const InputDecoration(
                // hintText: 'กรุณาไปนอน',
                label: Text(
                  'Confirm Password',
                  style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
                ),
                // fillColor: Colors.grey,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedCreateAccount,
                child: Text('Create'),
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


 void onPressedCreateAccount() async {
   String firstname = firstnameControl.text;
   String lastname = lastnameControl.text;
   String age = ageControl.text;
   String email = emailControl.text;
   String pwd = passwordControl.text;
   String confirmpwd = confirmpasswordControl.text;
   if (email.isNotEmpty && pwd.isNotEmpty) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: pwd,
        );
        print(credential);

        if (credential.user != null) {
          String uid = credential.user!.uid;
          DatabaseReference ref = FirebaseDatabase.instance.ref("users/" + uid);
          print(DatabaseReference);
          ref.set(
            {
              "firstname": firstname,
              "lastname": lastname,
              "email": email,
              "password": pwd,
              "confirmpassword": confirmpwd,
              "age": int.parse(age),
            },
          );
          Navigator.of(context).pop();
        }
     
     } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
 }
 }
}
