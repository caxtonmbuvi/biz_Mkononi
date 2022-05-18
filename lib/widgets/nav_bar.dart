import 'package:biz_mkononi/pages/customesr.dart';
import 'package:biz_mkononi/pages/sales.dart';
import 'package:biz_mkononi/utils/dimensions.dart';
import 'package:biz_mkononi/widgets/big_text.dart';
import 'package:biz_mkononi/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 152, 197, 218),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: Dimensions.height30 * 2,
          ),
          ListTile(
            leading: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: "John Doe",
                  color: Colors.black,
                  size: Dimensions.font18,
                ),
                SmallText(
                  text: "Admin",
                  color: Colors.black,
                  size: Dimensions.font18,
                ),
              ],
            ),
            trailing: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close)),
          ),
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width15, right: Dimensions.width15),
            child: Column(
              children: [
                const Divider(
                  height: 30,
                  thickness: 3,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                ListTile(
                  tileColor: Colors.white,
                  leading: const Icon(Icons.add_chart),
                  title: SmallText(
                    text: "Insights",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ),
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, left: Dimensions.height10),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 3,
                    ),
                  ),
                  title: SmallText(
                    text: "Overview",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  onTap: () => null,
                ),
                GestureDetector(
                  onTap: () {
                   Get.to(()=> const SalesInsights());
                  },
                  child: ListTile(
                    leading: Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height10, left: Dimensions.height10),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3,
                      ),
                    ),
                    title: SmallText(
                      text: "Sales Insights",
                      color: Colors.black,
                      size: Dimensions.font18,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=> const CustomerInsights());
                  },
                  child: ListTile(
                    leading: Container(
                      padding: EdgeInsets.only(
                          top: Dimensions.height10, left: Dimensions.height10),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3,
                      ),
                    ),
                    title: SmallText(
                      text: "Customer Insights",
                      color: Colors.black,
                      size: Dimensions.font18,
                    ),
                  ),
                ),
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, left: Dimensions.height10),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 3,
                    ),
                  ),
                  title: SmallText(
                    text: "Chum Rate Insights",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10, left: Dimensions.height10),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 3,
                    ),
                  ),
                  title: SmallText(
                    text: "Revenue Insights",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: SizedBox(),
                  title: BigText(
                    text: "Sections".toUpperCase(),
                    color: Colors.black,
                    size: Dimensions.font20 + 2,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.cases,
                    color: Colors.black,
                  ),
                  title: SmallText(
                    text: "Business",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  title: SmallText(
                    text: "Sales",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.car_rental,
                    color: Colors.black,
                  ),
                  title: SmallText(
                    text: "Supplies",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.money,
                    color: Colors.black,
                  ),
                  title: SmallText(
                    text: "Finance",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(
                    Icons.people,
                    color: Colors.black,
                  ),
                  title: SmallText(
                    text: "Customers",
                    color: Colors.black,
                    size: Dimensions.font18,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  onTap: () => null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
