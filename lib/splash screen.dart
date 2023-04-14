// import 'dart:async';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:project_classes_secreen/main.dart';
// import 'package:project_classes_secreen/student_profile.dart';
//
//
//  class SplashScreen extends StatefulWidget {
//    const SplashScreen({Key? key}) : super(key: key);
//
//    @override
//    State<SplashScreen> createState() => _SplashScreenState();
//  }
//
//  class _SplashScreenState extends State<SplashScreen> {
//    FirebaseAuth auth =FirebaseAuth.instance;
//    @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//  final user=auth.currentUser;
//     if(user!=null)
//     {
//       Timer(Duration(seconds: 3),()=>
//         Navigator.push(context, MaterialPageRoute(builder: ((context) => StudentProfile())))
//     );
//
//     }else
//       {Timer(Duration(seconds: 3),()=>
//           Navigator.push(context, MaterialPageRoute(builder: ((context) => ClassesPage()))));
//
//       }
//   }
//    @override
//    Widget build(BuildContext context) {
//      return
//          Scaffold(
//            body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image(image: AssetImage("images/school logo pic.jpg", ))
//             ],
//             ),
//          );
//    }
//  }
