import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/card_text.dart';
import 'package:biz_mkononi/widgets/nav_bar.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';

class CustomerInsights extends StatelessWidget {
  const CustomerInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 141, 131, 208),
          title: Row(
            children: [
              SizedBox(
                width: Dimensions.width20 * 3,
              ),
              BigText(
                text: "Boutique Shop",
                color: Colors.white,
                size: Dimensions.font20,
              ),
            ],
          )),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(Dimensions.width10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Welcome John Doe,",
                    color: Color.fromARGB(255, 141, 131, 208),
                    size: Dimensions.font20,
                  ),
                  Container(
                    padding: EdgeInsets.all(Dimensions.height10 / 2),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 141, 131, 208),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius30)),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SmallText(
                text: "Here is your today overview insights",
                color: Colors.grey,
                size: Dimensions.font12 + 4,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SizedBox(
                height: Dimensions.height45 + 10,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius30 + 20),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Search for insights, sales, customers",
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                  height: Dimensions.height10 * 12,
                  margin: const EdgeInsets.only(left: 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardText(
                        text: "2000",
                        text1: "New Users",
                      ),
                      CardText(
                        text: "8.5%",
                        text1: "Repeated Purchase",
                      ),
                      CardText(
                        text: "1.2%",
                        text1: "Customer care",
                      ),
                    ],
                  )),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.date_range_outlined,
                    color: Colors.blue.shade300,
                    size: Dimensions.iconSize24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10 / 2,
                        right: Dimensions.width10 / 2),
                    child: BigText(
                      text: "August 26, 2021 - December 31, 2021",
                      color: Colors.blue.shade300,
                      size: Dimensions.font20 - 5,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.black,
                    size: Dimensions.iconSize16,
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    width: Dimensions.screenWidth / 2 - 50,
                    child: TextButton(
                        child: Center(
                          child: BigText(
                            text: "Phone Calls",
                            color: Colors.white,
                            size: Dimensions.font20 - 5,
                          ),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(13)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.shade300),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue.shade300),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(
                                        color: Colors.blue.shade300)))),
                        onPressed: () {}),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    width: Dimensions.screenWidth / 2 - 50,
                    child: TextButton(
                        child: Center(
                          child: BigText(
                            text: "Gender Visit Buying",
                            color: Colors.grey,
                            size: Dimensions.font20 - 5,
                          ),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(13)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade300),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade300),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(
                                        color: Colors.grey.shade300)))),
                        onPressed: () {}),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/graph1.jpeg"),
                      // fit: BoxFit.cover,
                      // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
