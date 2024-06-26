import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/costants.dart';
import 'package:flutter_application_1/features/presentation/views/splash_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
              textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme),
          ),
   
          
      home: SplashView(),
    );
  }
}
