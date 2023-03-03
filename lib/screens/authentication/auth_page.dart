import 'package:flutter/material.dart';
import 'package:my_wallpaper/screens/home_screen.dart';
import 'package:my_wallpaper/utils/routes.dart';
import 'package:my_wallpaper/widgets/custom_botton.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: customButton(
              text: "Continue with Google",
              onTap: (){
                nextPageOnly(page: const HomeScreen(), context: context);
              },
              icon: const Icon(Icons.mail_outline,color: Colors.red)
          ),
        ),
      ),
    );
  }
}
