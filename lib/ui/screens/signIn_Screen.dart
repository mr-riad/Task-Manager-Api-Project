import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_api/widgets/screen_background.dart';

class SigninScreen extends StatefulWidget {
  static const String name = '/sign-in';

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Get Started With",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _emailTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _passwordTEController,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onTapSignInButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(height: 20),
                  TextButton(onPressed: _onTapForgotButton,
                      child: Text("Forgot Password?",
                      style: TextStyle(color: Colors.grey),)),
                  RichText(text: TextSpan(
                    text: "Don't Have an accoun? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 0.3
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = _onTapSignUpButton
                      )
                    ]
                  ))

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton(){


  }
  void _onTapForgotButton(){

  }
  void _onTapSignUpButton(){

  }

  void dispose(){
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
