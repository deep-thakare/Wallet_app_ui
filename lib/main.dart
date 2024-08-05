import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_app_ui/provider/bottomnavbar_provider.dart";
import "package:wallet_app_ui/provider/otp_provider.dart";
import "package:wallet_app_ui/splash_screen.dart";



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  


  Widget build (BuildContext context){
    return MultiProvider(

      providers: [
        ChangeNotifierProvider<OtpProvider>(
          create: (context) => OtpProvider(),),
        ChangeNotifierProvider<BottomNavBarProvider>(
          create: (context) => BottomNavBarProvider(),),
      ],
      
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}