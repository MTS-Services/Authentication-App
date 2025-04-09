import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_register/utils/app_image_path.dart';
import 'package:login_and_register/utils/app_text.dart';
import 'package:login_and_register/views/widgets/my-custom_field.dart';
import 'package:login_and_register/views/widgets/my_custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        SvgPicture.asset(
          AppImagePath.signInImage,
          height: 220,
          fit: BoxFit.fitHeight,
        ),
        MyCustomField(
          hText: AppText.emailAddress,
          icon: Icon(
            Icons.email_outlined,
            size: 18,
          ),
        ),
        MyCustomField(
          hText: AppText.password,
          obscureText: isVisible,
          icon: _isVisibleButton(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppText.forgetPassword,
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        MyCustomButton(
          text: AppText.signIn,
          onPressed: () {},
        )
      ],
    );
  }

  Widget _isVisibleButton() {
    return IconButton(
      onPressed: () {
        setState(() {
          isVisible = !isVisible;
        });
      },
      icon: isVisible
          ? Icon(
              Icons.visibility_off,
              color: Colors.black,
              size: 17,
            )
          : Icon(
              Icons.visibility,
              color: Colors.grey,
            ),
    );
  }
}
