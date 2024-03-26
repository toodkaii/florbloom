import 'package:firebase_core/firebase_core.dart';
import 'package:florbloom_app/firebase_options.dart';
import 'package:florbloom_app/forgot_password.dart';
import 'package:florbloom_app/bottomNav.dart';
import 'package:florbloom_app/navbar.dart';
import 'package:flutter/material.dart';
import 'package:florbloom_app/screens/home_screen.dart';
import 'package:florbloom_app/search.dart';
import 'package:florbloom_app/screens/splash_page.dart';
import 'package:florbloom_app/signin.dart';
import 'package:florbloom_app/signup.dart';
import 'package:florbloom_app/scroll_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            backgroundColor: Colors.pink,
            elevation: 0,
            title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataSearch()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 1.4),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Search Products',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 32,
                      width: 75,
                      child: const Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

// return Scaffold(
//         appBar: AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       title: InkWell(
//         onTap: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const SearchBar()));
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.amber, width: 1.4),
//             borderRadius: BorderRadius.circular(25),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: Icon(
//                       Icons.search,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   Text(
//                     'Search',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.amber,
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 height: 32,
//                 width: 75,
//                 child: const Center(
//                   child: Text(
//                     'Search',
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ));