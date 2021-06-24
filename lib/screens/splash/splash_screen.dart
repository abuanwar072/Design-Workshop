import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onbording/constants.dart';
import 'package:onbording/screens/auth/sign_in_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                Spacer(flex: 5),
                SvgPicture.asset("assets/icons/logo.svg"),
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Text(
                    "Wheather we create history or not \nwe are a part of history",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: defaultPadding),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    ),
                    child: Text("Get Started"),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
