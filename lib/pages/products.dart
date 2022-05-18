import 'package:biz_mkononi/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class ProductsInsights extends StatelessWidget {
  const ProductsInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      drawer:const NavBar()
    );
  }
}
