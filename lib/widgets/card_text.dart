import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String text;
  final String text1;
  const CardText({ Key? key, required this.text,required this.text1, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(0), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          color: Colors.grey.shade200,
                          width: 150,
                          height: 150,
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 40),
                                   child: BigText(
                              text: text,
                              color: Colors.blue,
                              size: Dimensions.font28,
                            ),),
                                SmallText(
                              text: text1,
                              color: Colors.black,
                              size: Dimensions.font12,
                            )
                              ],
                            ),
                          ),
                        ),
                      );
  }
}