import 'package:flutter/material.dart';
import 'package:task_manager_api/widgets/screen_background.dart';

class SigninScreen extends StatefulWidget {
  static const String name = '/sign-in';

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                "Get Started With",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
