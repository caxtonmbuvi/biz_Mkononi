import 'dart:convert';

import 'package:biz_mkononi/api/my_api.dart';
import 'package:biz_mkononi/auth/sign_in.dart';
import 'package:biz_mkononi/base/snackbar.dart';
import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/app_text_field.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
    }

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var repassController = TextEditingController();
    bool _isObscure = true;

    _register() async {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String repass = repassController.text.trim();

      if (name.isEmpty) {
        showCustomSnackBar("Type in your name", title: "Name");
      } else if (email.isEmpty) {
        showCustomSnackBar("Type in your email address",
            title: "Email Address");
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type in a valid email",
            title: "Valid email address");
      } else if (phone.isEmpty) {
        showCustomSnackBar("Type in your number", title: "Phone Number");
      } else if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title: "Password");
      } else if (password.length < 6) {
        showCustomSnackBar("Password can not be less than six characters",
            title: "Pasword");
      } else if (password != repass) {
        showCustomSnackBar("Passwords do not match", title: "Pasword");
      } else {
        var data = {
          'name': nameController.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'password': passwordController.text,
        };
        var res = await CallApi().postData(data, 'register');
        var body = json.decode(res.body);
        print(body);
        if (res.statusCode == 200 || res.statusCode == 201) {
          print(res.toString());
          showCustomSnackBar("Please confirm email and Login",
              title: "Success");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SignIn()));
        } else {
          showCustomSnackBar("Failed Registration", title: "Failed");
        }
      }
    }

    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height45 * 2,
                left: Dimensions.width30,
                bottom: Dimensions.height30,
                right: Dimensions.width30,
              ),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Create Account",
                      color: Colors.white,
                      size: Dimensions.font28,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: "Name",
                      color: Colors.white,
                      size: Dimensions.font18,
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    AppTextField(
                      textEditingController: nameController,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: "Email",
                      color: Colors.white,
                      size: Dimensions.font18,
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    AppTextField(
                      textEditingController: emailController,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: "Phone",
                      color: Colors.white,
                      size: Dimensions.font18,
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    AppTextField(
                      textEditingController: phoneController,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: "Password",
                      color: Colors.white,
                      size: Dimensions.font18,
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    AppTextField(
                      textEditingController: passwordController,
                      isObscure: _isObscure,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SmallText(
                      text: "Confirm Password",
                      color: Colors.white,
                      size: Dimensions.font18,
                    ),
                    SizedBox(
                      height: Dimensions.height10 / 2,
                    ),
                    AppTextField(
                      textEditingController: repassController,
                      isObscure: _isObscure,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.only(
                    right: Dimensions.width20, left: Dimensions.width20),
                width: Dimensions.width20 * 10,
                height: Dimensions.width30 * 2,
                child: TextButton(
                    child: SmallText(
                      text: "Register",
                      color: Colors.white,
                      size: Dimensions.font28,
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(Dimensions.height15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.height10 / 2),
                                    side:
                                        BorderSide(color: Colors.blueAccent)))),
                    onPressed: () {
                      _register();
                    }),
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallText(
                          text: "Already have an account?",
                          color: Colors.white,
                          size: Dimensions.font18,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
                          child: SmallText(
                            text: "Sign In",
                            color: Colors.white,
                            size: Dimensions.font18,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.height10 / 2,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Resend Verification SMS? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              TextSpan(
                                text: 'Resend',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Verify Phone ? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                              TextSpan(
                                text: 'Verify Phone ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
          ],
        ),
      ),
    );
  }
}
