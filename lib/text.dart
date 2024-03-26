// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:florbloom_app/forgot_password.dart';
// import 'package:florbloom_app/screens/home_screen.dart';
// import 'package:florbloom_app/signup.dart';

// class SigninPages extends StatefulWidget {
//   const SigninPages({super.key});

//   @override
//   State<SigninPages> createState() => _SigninPagesState();
// }

// class _SigninPagesState extends State<SigninPages> {
//   TextEditingController emailControl = TextEditingController();
//   TextEditingController passwordControl = TextEditingController();
//   Color myColor = Color(0xFF534D50);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(164, 159, 91, 1),
//       ),
//       backgroundColor: Color.fromRGBO(235, 236, 234, 1),
//       body: Container(
//         height: double.infinity,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Login',
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'InriaSerif',
//                   color: (Color.fromRGBO(83, 77, 80, 1)),
//                 ),
//               ),
//             ),

//             Spacer(
//               flex: 2,
//             ),
//             TextField(
//               controller: emailControl,
//               decoration: const InputDecoration(
//                   // hintText: 'กรุณากรอกอีเมล',
//                   label: Text(
//                     'Email',
//                     style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                   // fillColor: Colors.amber,
//                   hintStyle: TextStyle(color: Colors.grey)),
//             ),
//             Spacer(),
//             TextField(
//               controller: passwordControl,
//               decoration: const InputDecoration(
//                 // hintText: 'กรุณากรอกรหัสผ่าน',
//                 label: Text(
//                   'Password',
//                   style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                 ),
//                 // fillColor: Colors.grey,
//               ),
//               obscureText: true,
//             ),
//             SizedBox(
//               height: 3,
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: onPressedForgotPw,
//                 child: Text('Forgot your password?'),
//                 style: TextButton.styleFrom(
//                   // primary: Colors.blue, เก่าแล้ว
//                   foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
//                   textStyle: TextStyle(
//                     fontSize: 14,
//                     fontFamily: 'InriaSerif',
//                     decoration: TextDecoration.underline,
//                     decorationColor: (Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: onPressedSignin,
//                 child: Text('Sign In'),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: (Color.fromRGBO(83, 77, 80, 1)),
//                   textStyle: TextStyle(
//                     fontSize: 20,
//                     fontFamily: 'InriaSerif',
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   padding: EdgeInsets.all(16),
//                 ),
//               ),
//             ),
//             Spacer(),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     height: 1, // ความสูงของเส้น
//                     width: 90, // ความยาวของเส้น
//                     color: (Color.fromRGBO(168, 170, 167, 1)),
//                     // สีของเส้น
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text(
//                       'Or',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'InriaSerif',
//                         color: (Color.fromRGBO(168, 170, 167, 1)),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 1,
//                     width: 90,
//                     color: (Color.fromRGBO(168, 170, 167, 1)),
//                   ),
//                 ],
//               ),
//             ),
//             Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: onPressedFacebook,
//                 child: Row(
//                   children: [
//                     Icon(Icons.facebook_rounded),
//                     Text('Login with Facebook'),
//                   ],
//                   mainAxisAlignment: MainAxisAlignment.center,
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: Color.fromRGBO(60, 90, 153, 1),
//                   textStyle: TextStyle(
//                     fontSize: 16,
//                     fontFamily: 'InriaSerif',
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   padding: EdgeInsets.all(16),
//                 ),
//               ),
//             ),

//             Spacer(
//               flex: 1,
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: onPressedGoogle,
//                 child: Row(
//                   children: [
//                     Icon(Icons.g_mobiledata_rounded),
//                     Text('Login with Google'),
//                   ],
//                   mainAxisAlignment: MainAxisAlignment.center,
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
//                   backgroundColor: Colors.white,
//                   textStyle: TextStyle(
//                     fontSize: 16,
//                     fontFamily: 'InriaSerif',
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   padding: EdgeInsets.all(16),
//                 ),
//               ),
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Don't have an account yet?",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontFamily: 'InriaSerif',
//                     color: (Color.fromRGBO(168, 170, 167, 1)),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: onPressedCreateAc,
//                     child: Text('Create Account'),
//                     style: TextButton.styleFrom(
//                       // primary: Colors.blue, เก่าแล้ว
//                       foregroundColor: (Color.fromRGBO(83, 77, 80, 1)),
//                       textStyle: TextStyle(
//                         fontSize: 14,
//                         fontFamily: 'InriaSerif',
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Spacer(
//               flex: 3,
//             ),
//             // OutlinedButton(
//             //   onPressed: onPressedCreate,
//             //   child: Text('สร้างบัญชีผู้ใช้งาน'),
//             //   style: OutlinedButton.styleFrom(
//             //     foregroundColor: Colors.black,
//             //     textStyle: TextStyle(fontSize: 20),
//             //     side: BorderSide(width: 1.0, color: Colors.black),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   // void onPressedForgotPw() {
//   //   print('มีการกดปุ่มลืมรหัสผ่าน');
//   //   Navigator.of(context).push(MaterialPageRoute(
//   //     builder: (context) => ForgotPassword(),
//   //   ));
//   // }

//   void onPressedSignin() async {
//     String email = emailControl.text;
//     String pwd = passwordControl.text;

//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: pwd);

//       if (credential.user != null && credential.user!.uid != '') {
//         Navigator.of(context).pushAndRemoveUntil(
//           MaterialPageRoute(
//             builder: (context) => HomePage(),
//             fullscreenDialog: false,
//           ),
//           (route) => false,
//         );
//       }
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//       print(e.code);
//     }
//   }

//   void onPressedForgotPw() {
//     print('Forgot password');
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => ForgotPassword(),
//     ));
//   }

//   void onPressedFacebook() {}

//   void onPressedGoogle() {}

//   void onPressedCreateAc() {
//     print('Create Account');
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => SignupPage(),
//     ));
//   }
// }









// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:florbloom_app/signin.dart';
// import 'package:flutter/widgets.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   TextEditingController emailControl = TextEditingController();
//   TextEditingController passwordControl = TextEditingController();
//   TextEditingController confirmpasswordControl = TextEditingController();
//   TextEditingController firstnameControl = TextEditingController();
//   TextEditingController lastnameControl = TextEditingController();
//   TextEditingController ageControl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(164, 159, 91, 1),
//       ),
//       backgroundColor: Color.fromRGBO(235, 236, 234, 1),
//       body: Container(
//         height: double.infinity,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Register',
//                 style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'InriaSerif',
//                   color: (Color.fromRGBO(83, 77, 80, 1)),
//                 ),
//               ),
//             ),

//             Spacer(
//               flex: 2,
//             ),
//             TextField(
//               controller: firstnameControl,
//               decoration: const InputDecoration(
//                   // hintText: 'กรุณากรอกอีเมล',
//                   label: Text(
//                     'First name',
//                     style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                   // fillColor: Colors.amber,
//                   hintStyle: TextStyle(color: Colors.grey)),
//             ),
//             Spacer(),
//             TextField(
//               controller: lastnameControl,
//               decoration: const InputDecoration(
//                   // hintText: 'กรุณากรอกอีเมล',
//                   label: Text(
//                     'Last name',
//                     style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                   // fillColor: Colors.amber,
//                   hintStyle: TextStyle(color: Colors.grey)),
//             ),
//             Spacer(),
//             TextField(
//               controller: ageControl,
//               decoration: const InputDecoration(
//                   // hintText: 'กรุณากรอกอีเมล',
//                   label: Text(
//                     'Age',
//                     style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                   // fillColor: Colors.amber,
//                   hintStyle: TextStyle(color: Colors.grey)),
//             ),
//             Spacer(),
//             TextField(
//               controller: emailControl,
//               decoration: const InputDecoration(
//                   // hintText: 'กรุณากรอกอีเมล',
//                   label: Text(
//                     'Email',
//                     style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                   ),
//                   // fillColor: Colors.amber,
//                   hintStyle: TextStyle(color: Colors.grey)),
//             ),
//             Spacer(),
//             TextField(
//               controller: passwordControl,
//               decoration: const InputDecoration(
//                 // hintText: 'กรุณากรอกรหัสผ่าน',
//                 label: Text(
//                   'Password',
//                   style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                 ),
//                 // fillColor: Colors.grey,
//               ),
//               obscureText: true,
//             ),
//             Spacer(),
//             TextField(
//               controller: confirmpasswordControl,
//               decoration: const InputDecoration(
//                 // hintText: 'กรุณาไปนอน',
//                 label: Text(
//                   'Confirm Password',
//                   style: TextStyle(color: Color.fromRGBO(83, 77, 80, 1)),
//                 ),
//                 // fillColor: Colors.grey,
//               ),
//               obscureText: true,
//             ),

//             SizedBox(
//               height: 30,
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: onPressedCreateAccount,
//                 child: Text('Create'),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: (Color.fromRGBO(83, 77, 80, 1)),
//                   textStyle: TextStyle(
//                     fontSize: 20,
//                     fontFamily: 'InriaSerif',
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   padding: EdgeInsets.all(16),
//                 ),
//               ),
//             ),

//             Spacer(
//               flex: 3,
//             ),
//             // OutlinedButton(
//             //   onPressed: onPressedCreate,
//             //   child: Text('สร้างบัญชีผู้ใช้งาน'),
//             //   style: OutlinedButton.styleFrom(
//             //     foregroundColor: Colors.black,
//             //     textStyle: TextStyle(fontSize: 20),
//             //     side: BorderSide(width: 1.0, color: Colors.black),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   // void onPressedForgotPw() {
//   //   print('มีการกดปุ่มลืมรหัสผ่าน');
//   //   Navigator.of(context).push(MaterialPageRoute(
//   //     builder: (context) => ForgotPassword(),
//   //   ));
//   // }

//   void onPressedSignin() async {
//     String email = emailControl.text;
//     String pwd = passwordControl.text;

//     try {
//       final credential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: pwd);

//       // if (credential.user != null && credential.user!.uid != '') {
//       //   Navigator.of(context).pushAndRemoveUntil(
//       //     MaterialPageRoute(
//       //       builder: (context) => SigninPages(),
//       //       fullscreenDialog: false,
//       //     ),
//       //     (route) => false,
//       //   );
//       // }
      
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//       print(e.code);
//     }
//   }

//   void onPressedFacebook() {}

//   void onPressedGoogle() {}

//   void onPressedCreateAccount() {
//     print('สร้างบัญชีผู้ใช้งาน');
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (context) => SigninPages(),
//     ));
//   }
// }









// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:florbloom_app/forgot_password.dart';
// import 'package:florbloom_app/search.dart';
// import 'package:florbloom_app/navbar.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:florbloom_app/signin.dart';
// import 'package:florbloom_app/signup.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List imageList = [
//     {"id": 1, "image_path": 'images/pic2.jpg'},
//     {"id": 2, "image_path": 'images/pic6.jpg'},
//     {"id": 3, "image_path": 'images/pic4.jpg'},
//     {"id": 4, "image_path": 'images/pic1.png'}
//   ];

//   final CarouselController carouselController = CarouselController();

//   PageController pageController = PageController();
//   int _selectedIndex = 0;

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const NavBar(),
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(164, 159, 91, 1),
//         elevation: 0,
//         iconTheme: const IconThemeData(
//           color: Colors.white,
//         ),
//         title: InkWell(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const DataSearch()));
//           },
//           child: Container(
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.white, width: 0.5),
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.white),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                         size: 16,
//                       ),
//                     ),
//                     Text(
//                       'Search Products',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontFamily: 'InriaSerif',
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Color.fromRGBO(83, 77, 80, 1),
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   height: 32,
//                   width: 75,
//                   child: const Center(
//                     child: Text(
//                       'Search',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'InriaSerif',
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Column(children: [
//         Stack(
//           children: [
//             InkWell(
//               onTap: () {
//                 print(currentIndex);
//               },
//               child: CarouselSlider(
//                 items: imageList
//                     .map(
//                       (item) => Image.asset(
//                         item['image_path'],
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                       ),
//                     )
//                     .toList(),
//                 carouselController: carouselController,
//                 options: CarouselOptions(
//                   scrollPhysics: const BouncingScrollPhysics(),
//                   autoPlay: true,
//                   aspectRatio: 1,
//                   viewportFraction: 1,
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       currentIndex = index;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: imageList.asMap().entries.map((entry) {
//                   return GestureDetector(
//                     onTap: () => carouselController.animateToPage(entry.key),
//                     child: Container(
//                       width: currentIndex == entry.key ? 17 : 7,
//                       height: 7.0,
//                       margin: const EdgeInsets.symmetric(
//                         horizontal: 3.0,
//                       ),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: currentIndex == entry.key
//                               ? Colors.grey
//                               : Colors.white),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//             const Spacer(
//               flex: 100,
//             ),
//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Best Sellers',
//                 style: TextStyle(
//                   color: (Color.fromRGBO(83, 77, 80, 1)),
//                   fontFamily: 'InriaSerif',
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ]),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: 'Cart'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications), label: 'Notificattion'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color.fromRGBO(164, 159, 91, 1),
//         unselectedItemColor: Colors.black,
//         onTap: onItemTapped,
//       ),
//     );
//   }

//   Widget buildBody() {
//     switch (_selectedIndex) {
//       case 0:
//         return HomePage();
//       case 1:
//         return SigninPages();
//       case 2:
//         return SignupPage();
//       default:
//         return ForgotPassword();
//     }
//   }

//   Widget buildPages() {
//     return PageView(
//       controller: pageController,
//       children: [
//         HomePage(),
//         SigninPages(),
//         SignupPage(),
//         ForgotPassword(),
//       ],
//       onPageChanged: onItemTapped,
//     );
//   }

//   void onItemTapped(int index) {
//     pageController.jumpToPage(index);
//     //pageController.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.bounceIn);
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }


//   @override
//   Widget Builder(BuildContext context) {
//     return Scaffold(
//       body: buildPages(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: 'Cart'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notification_add), label: 'Notificattion'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.black,
//         onTap: onItemTapped,
//       ),
//     );
//   }

//   Widget buildBody() {
//     switch (_selectedIndex) {
//       case 0:
//         return HomePage();
//       case 1:
//         return SigninPages();
//       case 2:
//         return SignupPage();
//       default:
//         return ForgotPassword();
//     }
//   }

//   Widget buildPages() {
//     return PageView(
//       controller: pageController,
//       children: [
//         HomePage(),
//         SigninPages(),
//         SignupPage(),
//         ForgotPassword(),
//       ],
//       onPageChanged: onItemTapped,
//     );
//   }

//   void onItemTapped(int index) {
//     pageController.jumpToPage(index);
//     //pageController.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.bounceIn);
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }
