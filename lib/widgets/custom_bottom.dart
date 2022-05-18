import 'package:biz_mkononi/pages/products.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.lightBlue,
     selectedItemColor: Colors.blue,
     unselectedItemColor: Colors.white,
     
     items: const [
       BottomNavigationBarItem(
           icon: Icon(
             Icons.home_outlined,
           ),
           label: "home"),
       BottomNavigationBarItem(
           icon: Icon(
             Icons.archive,
           ),
           label: "History"),
       BottomNavigationBarItem(
           icon: Icon(
             Icons.shopping_cart,
           ),
           label: "cart"),
       BottomNavigationBarItem(
           icon: Icon(
             Icons.person,
           ),
           label: "me"),
     ]
        );
  }
}