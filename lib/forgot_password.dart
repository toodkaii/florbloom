import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//ทำหน้าลืมรหัสผ่าน โดยในหน้ามี input 1 และ 1 ปุ่มสำหรับ submitted ช่องคือ email
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailControl = TextEditingController();
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
                'Reset your password',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'InriaSerif',
                  color: (Color.fromRGBO(83, 77, 80, 1)),
                ),
              ),
            ),
            Spacer(flex: 3),
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
            Spacer(flex: 1),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "We will send you an email to reset your password",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'InriaSerif',
                  color: (Color.fromRGBO(168, 170, 167, 1)),
                ),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedSubmit,
                child: Text('Submit'),
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
              flex: 23,
            ),
          ],
        ),
      ),
    );
  }

  void onPressedSubmit() async {
    print('มีการกดปุ่มลืมรหัสผ่าน');
    Navigator.of(context).pop();
    String email = emailControl.text;
    try {
      final credential = await FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      }
      print(e.code);
    }
  }
}
