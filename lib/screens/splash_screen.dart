import 'package:flutter/material.dart';
import 'package:my_wallpaper/screens/authentication/auth_page.dart';
import 'package:my_wallpaper/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      nextPageOnly(context: context, page: const AuthPage());
    });
    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 100,),
      ),
    );
  }
}
