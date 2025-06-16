import 'package:flutter/material.dart';
import 'package:shop_app/global_variable.dart';
import 'package:shop_app/product_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    "All",
    "Adidas",
    "Nike",
    "Asics",
    "Puma",
  ];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            width: 2
                          )
                          );

    
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(children: [
               Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Shoes\nCollection",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
               Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: border,
                        enabledBorder: border,
                        
                          
                        )
                                
                        ),
                ),
                      
                ),

                
              
            ]),
            SizedBox(
              height: 120,
              child: ListView.builder(
                    itemCount: filters.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final filter = filters[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedFilter = filter;
                            });
                           
                          },
                          child: Chip(
                            label: Text(filter, style: const TextStyle(fontSize: 16),),
                            backgroundColor: selectedFilter == filter ? const Color.fromARGB(255, 24, 25, 25) : Colors.white.withOpacity(0.1),
                            side: const BorderSide(
                              
                              width: 2
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            
                          
                          ),
                        ),
                      );
                    },
                  ),
            ),



            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return  ProductCard(
                    title: product['title'] as String, 
                    price: product['price'] as double,
                    image: product['imageUrl'] as String ,
                    backgroundColor: index.isEven? Colors.white.withOpacity(0.1): Colors.white.withOpacity(0.08),
                    );


                  
                }
                ),
            ),
          ],
        ),
      ),
    );
  }
}
