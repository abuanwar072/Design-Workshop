import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:onbording/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              SizedBox(height: defaultPadding),
              Text(
                "Welcome Back!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                "Please sign into your account",
                style: TextStyle(color: Colors.white30, height: 1.8),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SignInForm(),
              SizedBox(height: defaultPadding),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  icon: SvgPicture.asset("assets/icons/google.svg"),
                  label: Text(
                    "Sign in with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: emailValidator,
            decoration: InputDecoration(hintText: "Email"),
          ),
          SizedBox(height: defaultPadding),
          TextFormField(
            decoration: InputDecoration(hintText: "Password"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.white30),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
