import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';
import 'package:flutter_instagram_clone/view/main_screen/main_screen.dart';

import '../../core/constants/image_constants.dart';
import 'widgets/login_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstants.instaLogoPng,
                  width: 182,
                ),
                const SizedBox(height: 39),
                LoginTextField(
                  controller: nameController,
                  hintText: 'Username',
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 12),
                LoginTextField(
                  controller: passController,
                  hintText: 'Password',
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 19),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: ColorConstants.primaryBlue),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onTap: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? () => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                          (route) => false)
                      : null,
                  color: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstants.primaryBlue
                      : ColorConstants.primaryBlue.withOpacity(0.4),
                  child: const Text('Log in'),
                ),
                const SizedBox(height: 37),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: ColorConstants.primaryBlue,
                  ),
                  label: const Text(
                    'Log in with Facebook',
                    style: TextStyle(color: ColorConstants.primaryBlue),
                  ),
                ),
                const SizedBox(height: 41.5),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 30.5,
                        color: ColorConstants.primaryBlack.withOpacity(.2),
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          color: ColorConstants.primaryBlack.withOpacity(0.4)),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 30.5,
                        color: ColorConstants.primaryBlack.withOpacity(.2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 41.5),
                RichText(
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
                        style:
                            const TextStyle(color: ColorConstants.primaryBlue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: .4,
              color: ColorConstants.primaryBlack.withOpacity(0.4),
            ),
          ),
        ),
        child: Text(
          'Instagram on Facebook',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConstants.primaryBlack.withOpacity(0.4),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
