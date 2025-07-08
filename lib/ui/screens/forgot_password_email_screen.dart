import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_api/ui/screens/signIn_Screen.dart';
import 'package:task_manager_api/widgets/screen_background.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
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
          ),
        ),
      ),
    );
  }

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

  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
