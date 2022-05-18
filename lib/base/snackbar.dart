import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackBar(String message,
    {bool isError = true, String title = "Error"}) {
  //the curly braces means they are optional values ie isError and title
  Get.snackbar(title, message,
      titleText: BigText(text: title,color: Colors.white,),
      messageText: Text( message,style: TextStyle(color: Colors.white),

      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.blueAccent
    );
}