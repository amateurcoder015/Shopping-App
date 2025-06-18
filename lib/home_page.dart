import 'package:flutter/material.dart';
import 'package:shop_app/cart_page.dart';
// import 'package:shop_app/global_variable.dart';
// import 'package:shop_app/product_cart.dart';
import 'package:shop_app/product_list.dart';
// import 'product_details_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late String selectedFilter;
  int currentPage = 0;

  List<Widget> pages = [
    const ProductList(),
    const CartPage()

  ];

  @override
  

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentPage,
        onTap: (value){
              setState(() {
                currentPage = value;
              });
            },
        items: const [
          BottomNavigationBarItem(
            
            icon:  Icon(Icons.home, ),
            label: ''
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ''
            )
        ]
      ),
    );
  }
}
