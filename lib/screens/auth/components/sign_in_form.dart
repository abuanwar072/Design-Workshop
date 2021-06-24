import 'package:flutter/material.dart';

import '../../../constants.dart';

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
            onSaved: (newValue) {},
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "Email"),
          ),
          SizedBox(height: defaultPadding),
          TextFormField(
            validator: passwordValidator,
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // do what you want
                  _formKey.currentState!.save();
                }
              },
              child: Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
