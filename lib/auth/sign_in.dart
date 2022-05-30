import 'dart:convert';

import 'package:biz_mkononi/api/my_api.dart';
import 'package:biz_mkononi/auth/sign_up.dart';
import 'package:biz_mkononi/pages/products.dart';
import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/app_text_field.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

    bool _isObscure = true;
    bool _isChecked = false;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      backgroundColor: Color(0xFF363f93),
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

   _login() async {
    var data = {
      'email': emailController.text,
      'password': passwordController.text,
    };

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);
    print(body);
    if (body['success']) {
      
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => ProductsInsights()));
    } else {
      _showMsg(body['message']);
    }
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: Dimensions.screenWidth,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //   image: AssetImage("assets/images/background.png"),
          //   colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.3)),
          //   fit: BoxFit.fill,)
          // ),

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10 * 10,
                    left: Dimensions.height30,
                    right: Dimensions.height30),
                child: Column(
                  children: [
                    Container(
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions.width30 * 4,
                              height: Dimensions.height30 * 2,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/BIZ_MKONONI.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height45 - 5,
                            ),
                            BigText(
                              text: "Sign In",
                              color: Colors.white,
                              size: Dimensions.font28,
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
                              textEditingController: emailController,
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
                              icon: Icons.visibility,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height30-10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.white,
                              value: _isChecked,
                              onChanged: (val) {
                                // setState(() {});
                              },
                            ),
                            SmallText(
                              text: "Remember Me",
                              color: Colors.white,
                              size: Dimensions.font18,
                            ),
                            SmallText(
                              text: "Remember Me",
                              color: Colors.white,
                              size: Dimensions.font18,
                            ),
                          ],
                        ),
                        SmallText(
                              text: "Forgot Password ?",
                              color: Colors.white,
                              size: Dimensions.font18-5,
                            ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20 + 5,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.only(
                            right: Dimensions.width20,
                            left: Dimensions.width20),
                        width: Dimensions.width20 * 10,
                        height: Dimensions.width30 * 2,
                        child: TextButton(
                            child: SmallText(
                              text: "Sign In",
                              color: Colors.white,
                              size: Dimensions.font28,
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(Dimensions.height15)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blueAccent),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.height10 / 2),
                                        side: BorderSide(color: Colors.blueAccent)))),
                            onPressed: () {
                              // _login();
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const ProductsInsights()));
                              
                             Get.to(()=> ProductsInsights());
                            }),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height45 + 5,
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallText(
                          text: "Don't have an account yet ?",
                          color: Colors.white,
                          size: Dimensions.font18,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: SmallText(
                            text: "Sign Up",
                            color: Colors.white,
                            size: Dimensions.font18,
                            decoration: TextDecoration.underline,
                          ),
                        )
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
