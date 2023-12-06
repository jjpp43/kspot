import 'package:kspot/src/view/homeScreen.dart';
import 'package:kspot/src/view/loginScreen.dart';

import 'src/style_export.dart';
import 'package:flutter/material.dart';
import 'example_view.dart';
//import 'services/firebase_auth_service.dart';
import 'app.dart';

void main() {
  runApp(MyApp());
}

//Provider를 설정하고 App 위젯을 호출합니다.
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: PrimaryColor,
        fontFamily: 'Pretendard',
      ),
      home: StreamBuilder(
        stream: null, //FirebaseAuth.instance.authStateChanges()
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return App();
          } else if (snapshot.hasError) {
            return Text('Something Went Wrong!');
          } else {
            return App();
          }
        },
      ),
      // home: FutureBuilder(
      //   future: _authService.isLoggedIn(),
      //   builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return CircularProgressIndicator();
      //     } else {
      //       if (snapshot.data == true) {
      //         return HomeView();
      //       } else {
      //         return LoginView();
      //       }
      //     }
      //   },
      // ),
    );
  }
}
