import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/cart_page.dart';
import 'package:shopping_app_flutter/global_variables.dart';
import 'package:shopping_app_flutter/product_card.dart';
import 'package:shopping_app_flutter/product_details_page.dart';
import 'package:shopping_app_flutter/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<Widget> pages=const [ProductList(),CartPage()];
int currentPage=1;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 0,
          unselectedFontSize: 0,
        onTap: (value){
          setState(() {
            currentPage=value;
          });
        },
        currentIndex: currentPage,
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart
        ),label: ''),
      ]),
    );
  }
}
