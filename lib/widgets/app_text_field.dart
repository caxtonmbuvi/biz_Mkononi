import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final IconData? icon;
  bool isObscure;

  AppTextField(
      {Key? key,
      required this.textEditingController,
      this.icon,
      this.isObscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure?true:false,
      controller: textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          onPressed: () {
            // setState(() {
            //   _isObscure = !_isObscure;
            // });
          },
        ),
        contentPadding: EdgeInsets.fromLTRB(Dimensions.width20,
            Dimensions.height15, Dimensions.width20, Dimensions.height15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius15),
        ),
      ),
    );
  }
}
