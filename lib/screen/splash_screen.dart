import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_task_manager/controller/auth_controller.dart';
import 'package:new_task_manager/screen/main_bottom_nav_bar_navigation_screen.dart';
import 'package:new_task_manager/screen/sign_in_screen.dart';
import '../utilitis/assets_path.dart';
import '../widigets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    await AuthController.getAccessToken();
    if (AuthController.isLoggedIn()){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainBottomNavBarScreen()));

    }
    else{
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }

  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetsPath.logoSvg,
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}
