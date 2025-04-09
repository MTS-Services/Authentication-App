import 'package:flutter/material.dart';
import 'package:login_and_register/utils/app_colors.dart';
import 'package:login_and_register/utils/app_text.dart';
import 'package:login_and_register/views/screens/auth/sign_in.dart';
import 'package:login_and_register/views/screens/auth/sign_up.dart';
import 'package:login_and_register/views/widgets/two_container_button.dart';

class ToggleButtonScreen extends StatefulWidget {
  const ToggleButtonScreen({super.key});

  @override
  State<ToggleButtonScreen> createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      // Sign In Toggle Buttons
                      TwoContainerButton(
                        onTap: () {
                          setState(() {
                            isLogin = true;
                          });
                        },
                        text: AppText.signIn,
                        containerColor: isLogin
                            ? AppColors.buttonColor
                            : Colors.transparent,
                        textColor:
                            isLogin ? Colors.white : AppColors.buttonColor,
                      ),

                      // Sign Up Toggle Buttons
                      TwoContainerButton(
                        onTap: () {
                          setState(() {
                            isLogin = false;
                          });
                        },
                        text: AppText.signUp,
                        containerColor: !isLogin
                            ? AppColors.buttonColor
                            : Colors.transparent,
                        textColor:
                            !isLogin ? Colors.white : AppColors.buttonColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                isLogin ? LoginScreen() : RegisterScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
