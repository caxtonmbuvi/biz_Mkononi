import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/card_text.dart';
import 'package:biz_mkononi/widgets/custom_bottom.dart';
import 'package:biz_mkononi/widgets/nav_bar.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';

class SalesInsights extends StatefulWidget {
  const SalesInsights({ Key? key }) : super(key: key);

  @override
  State<SalesInsights> createState() => _SalesInsightsState();
}
 int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
class _SalesInsightsState extends State<SalesInsights> {
 
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
                    children:  const [
                      CardText(
                        text: "\$4000",
                        text1: "Total Revenue",
                      ),
                      CardText(
                        text: "240",
                        text1: "Total Orders",
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10 / 2,
                        right: Dimensions.width10 / 2),
                    child: BigText(
                      text: "Most selling products",
                      color: Colors.blue.shade300,
                      size: Dimensions.font20 ,
                    ),
                  ),
                  SizedBox(width: Dimensions.width45,),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.blue.shade300,
                    size: Dimensions.iconSize24*2,
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                width: Dimensions.screenWidth/2,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BigText(text: "Day of the week",
                      color: Colors.white,
                      size: Dimensions.font18-2,
                    ),
                    SizedBox(width: Dimensions.width10,),
                    Icon(Icons.arrow_drop_down,color: Colors.white, size: Dimensions.iconSize24,),
                    SizedBox(width: Dimensions.width10,),
                  ],
                ),
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
                      image: AssetImage("assets/images/graph2.jpeg"),
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
      bottomNavigationBar: BottomNav(),
    );
  }
}

