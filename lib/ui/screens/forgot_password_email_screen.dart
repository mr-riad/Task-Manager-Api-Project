<<<<<<< HEAD
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_api/ui/screens/signIn_Screen.dart';
import 'package:task_manager_api/widgets/screen_background.dart';
=======
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_api/ui/screens/pin_verification_screen.dart';

import '../../widgets/screen_background.dart';
>>>>>>> task-manger

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

<<<<<<< HEAD
=======
  static const String name = '/forgot-password-email';

>>>>>>> task-manger
  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  final TextEditingController _emailTEController = TextEditingController();
<<<<<<< HEAD
=======
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

>>>>>>> task-manger
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
<<<<<<< HEAD
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90),
              Text(
                "Your Email Address",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              Text(
                "A 6 digit verification pin will send to your email address",
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w900,
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: _emailTEController,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => _emailSubmitButton(),
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 30),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Have Account? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.4,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = _signInScreen,
                      ),
                    ],
                  ),
                ),
              ),
            ],
=======
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Text(
                    'Your Email Address',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'A 6 digits OTP will be sent to your email address',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (String? value) {
                      String email = value ?? '';
                      if (EmailValidator.validate(email) == false) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onTapSubmitButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 0.4,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer:
                            TapGestureRecognizer()
                              ..onTap = _onTapSignInButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
>>>>>>> task-manger
          ),
        ),
      ),
    );
  }

<<<<<<< HEAD
  void _emailSubmitButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  void _signInScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

=======
  void _onTapSubmitButton() {
    // if (_formKey.currentState!.validate()) {
    //   // TODO: Sign in with API
    // }
    Navigator.pushNamed(context, PinVerificationScreen.name);
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
>>>>>>> task-manger
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> task-manger
