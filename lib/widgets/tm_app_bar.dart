import 'package:flutter/material.dart';

import '../ui/screens/sign_in_screen.dart';
import '../ui/screens/update_profile_screen.dart';

class TMAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TMAppBar({super.key});

  @override
  State<TMAppBar> createState() => _TMAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TMAppBarState extends State<TMAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: GestureDetector(
        onTap: _onTapProfileBar,
        child: Row(
          children: [
            CircleAvatar(),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rahim Hasan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'rahim@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: _onTapLogOutButton, icon: Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }

  void _onTapLogOutButton() {
    Navigator.pushNamedAndRemoveUntil(
        context, SignInScreen.name, (predicate) => false);
  }

  void _onTapProfileBar() {
    if (ModalRoute.of(context)!.settings.name != UpdateProfileScreen.name) {
      Navigator.pushNamed(context, UpdateProfileScreen.name);
    }
  }
}