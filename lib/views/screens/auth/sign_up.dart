import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_register/utils/app_image_path.dart';
import 'package:login_and_register/utils/app_text.dart';
import 'package:login_and_register/views/widgets/my-custom_field.dart';
import 'package:login_and_register/views/widgets/my_custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        SvgPicture.asset(
          AppImagePath.signUpImage,
          height: 220,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        MyCustomField(
          hText: AppText.fullName,
        ),
        // Email Address
        MyCustomField(
          hText: AppText.emailAddress,
          icon: Icon(
            Icons.email_outlined,
            size: 17,
          ),
        ),
        // Password Field
        MyCustomField(
          hText: AppText.password,
          obscureText: isVisible,
          icon: _isVisibleButton(),
        ),
        SizedBox(
          height: 40,
        ),
        MyCustomButton(
          text: AppText.signUp,
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
