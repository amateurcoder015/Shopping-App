import 'package:flutter/material.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:shop_app/home_page.dart';
import 'package:provider/provider.dart';
// import 'package:shop_app/home_page.dart';
// import 'package:shop_app/product_details_page.dart';
// import 'global_variable.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'PlusJakartaSans',
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              
            ),
            prefixIconColor: Color.fromARGB(119, 119, 119, 1),   
          ),
      
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              
            )
          ),
          textTheme: const TextTheme(
            titleLarge:TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            titleSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
      
        ),
         home: const HomePage()
      ),
    );
    
  }
}