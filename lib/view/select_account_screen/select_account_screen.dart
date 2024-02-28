import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';
import 'package:flutter_instagram_clone/view/login_screen/login_screen.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageConstants.instaLogoPng),
          const SizedBox(height: 52),
          const CircleAvatar(
            backgroundImage: AssetImage(ImageConstants.accountAvatarPng),
            radius: 42.5,
          ),
          const SizedBox(height: 13),
          const Text(
            'jacob_w',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorConstants.accountTextColor,
                fontSize: 14),
          ),
          const SizedBox(height: 12),
          const CustomButton(
            text: 'Log in',
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
