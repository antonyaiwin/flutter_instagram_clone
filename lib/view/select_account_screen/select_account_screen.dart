import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';
import 'package:flutter_instagram_clone/view/login_screen/login_screen.dart';
import 'package:flutter_instagram_clone/view/main_screen/main_screen.dart';

import '../../data/dummy/dummy_db.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.instaLogoPng,
              width: 182,
            ),
            const SizedBox(height: 52),
            const CircleAvatar(
              backgroundImage: NetworkImage(DummyDb.currentUserProfilePic),
              radius: 42.5,
            ),
            const SizedBox(height: 13),
            const Text(
              DummyDb.currentUserName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.black26,
                  fontSize: 14),
            ),
            const SizedBox(height: 12),
            CustomButton(
              onTap: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                  (route) => false),
              child: const Text('Log in'),
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                style: const ButtonStyle(
                  visualDensity: VisualDensity(vertical: -4),
                ),
                child: const Text(
                  'Switch Accounts',
                  style: TextStyle(
                    color: ColorConstants.primaryBlue,
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    width: .4,
                    color: ColorConstants.primaryBlack.withOpacity(0.4)))),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              color: ColorConstants.primaryBlack.withOpacity(0.4),
            ),
            children: [
              TextSpan(
                text: 'Sign up',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('sign up');
                  },
                style: const TextStyle(color: ColorConstants.primaryBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
