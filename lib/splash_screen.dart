import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:wallet_app_ui/login_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder:(context) => const LoginScreen()),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(87, 50, 191, 1),
      body: Center(
        child: SvgPicture.asset(
          "assets/img/splash.svg"
        ),
      ),
    );
  }
}