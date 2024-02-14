import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: "Electrecal store",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        secondaryHeaderColor: kPrimaryColor,
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        
      ), localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      
    );
    
  }
}
