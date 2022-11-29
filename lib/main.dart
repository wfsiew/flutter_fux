import 'package:flutter/material.dart';
import 'package:flutter_fux/constants.dart';
import 'package:flutter_fux/controllers/home_ctrl.dart';
import 'package:flutter_fux/ui/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shortly',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: kFont,
      ),
      initialRoute: Home.routeName,
      getPages: [
        GetPage(name: Home.routeName, page: () => Home(), transition: Transition.fadeIn),
      ],
      builder: (context, child) {
        final MediaQueryData mediaQueryData = MediaQuery.of(context);
        final double scale = mediaQueryData.textScaleFactor.clamp(1.0, 1.5);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
          child: child!,
        );
      },
    );
  }
}